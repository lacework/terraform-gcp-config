## Skip IAM grants and use Existing Service Account at the Project Level

This example shows how to skip iam grants and use an existing service account to create a Google Cloud Project integration with Lacework.

The fields required for this example are:

| Name                           | Description                                                                                  | Type |
|--------------------------------|----------------------------------------------------------------------------------------------|------|
| `use_existing_service_account` | Set this to `true` to use an existing service account.                                       | `bool` |
| `skip_iam_grants`              | Set this to `true` to skip generation of custom role, and IAM grants to the Service Account. | `bool` |
| `service_account_name`         | The name of an existing service account.                                                     | `string` |
| `service_account_private_key`  | A private key from the existing service account in JSON format and base64 encoded            | `string` |

```hcl
provider "google" {}

provider "lacework" {}

module "gcp_project_level_config" {
    source                       = "lacework/config/gcp"
    project_id                   = var.project_id

    use_existing_service_account = true
    skip_iam_grants              = true
    service_account_name         = "service_account_name"
    service_account_private_key  = "service_account_key"
}
```

Integration will fail if grants are not in place prior to execution. Make sure to create a custom role with the right 
permissions shown in the [README.md#required-roles](https://github.com/lacework/terraform-gcp-config/blob/main/README.md#required-roles), and assign it to the existing service account. Example:

```hcl
locals {
  default_project_roles = [
    "roles/browser",
    "roles/iam.securityReviewer",
    "roles/cloudasset.viewer"
  ]
}

resource "google_service_account" "lacework_gcp_compliance_config" {
  account_id   = "lacework-sa-compliance"
  description  = "Service account used by lacework for GCP compliance config"
  display_name = "Lacework Compliance"
  project      = var.project_id
}

resource "google_project_iam_member" "lacework_gcp_compliance_role" {
  project = var.project_id
  role    = "projects/${var.project_id}/roles/lacework.gcpCompliance" // already created custom role
  member  = "serviceAccount:${google_service_account.lacework_gcp_compliance_config.email}"
}

resource "google_project_iam_member" "lacework_gcp_compliance_config_roles" {
  for_each = toset(local.default_project_roles)
  project  = var.project_id
  role     = each.value
  member  = "serviceAccount:${google_service_account.lacework_gcp_compliance_config.email}"
}
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Terraform From Any Supported Host](https://docs.lacework.com/gcp-compliance-and-audit-log-integration-terraform-from-any-supported-host)