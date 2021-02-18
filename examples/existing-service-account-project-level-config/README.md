# Use Existing Service Account at the Project Level

This example shows how to use an existing service account to create a Google Cloud Project integration with Lacework.

The fields required for this example are:

| Name | Description | Type |
|------|-------------|------|
| `use_existing_service_account` | Set this to `true` to use an existing service account. | `bool` |
| `service_account_name` | The name of an existing service account. | `string` |
| `service_account_private_key` | A private key from the existing service account in JSON format and base64 encoded | `string` |

An example of a service account private key looks like this:
```
{
  "private_key_id": "abc123",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIabc\n-----END PRIVATE KEY-----\n",
  "client_email": "service-account-example@project-id.iam.gserviceaccount.com",
  "client_id": "1234"
}
```

The following example uses the `file()` and `base64encode()` functions from Terraform to pass
these parameters, create a `main.tf` with the following code:

```hcl
locals {
  service_account_private_key = base64encode(file("/path/to/private_key.json"))
}

provider "google" {}

provider "lacework" {}

module "lacework_svc_account" {
  source  = "lacework/config/gcp"
  version = "~> 0.1.1"

  use_existing_service_account = true
  service_account_name         = "my-service-account"
  service_account_private_key  = local.service_account_private_key
}
```

Run Terraform:
```
$ terraform init
$ GOOGLE_CREDENTIALS=account.json GOOGLE_PROJECT=my-project terraform apply
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Terraform From Any Supported Host](https://support.lacework.com/hc/en-us/articles/360057065094-GCP-Compliance-and-Audit-Trail-Integration-Terraform-From-Any-Supported-Host)
