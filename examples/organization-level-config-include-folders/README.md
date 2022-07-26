# Integrate Google Cloud Folders with Lacework at the Organization level
The following provides an example of integrating a Google Cloud Organization with Lacework for Cloud Resource configuration assessment, targeting specific folders.

The fields required for this example are:

| Name | Description | Type |
|------|-------------|------|
| `org_integration` | Set this to `true` to configure an organization level integration. | `bool` |
| `organization_id` | The id of the GCP Organization to integrate with. | `string` |
| `project_id` | The id of a Project, which will be used to deploy required resources for the integration. Note: if this is var is not explicitly set, the provider will check for the presence of the `GOOGLE_PROJECT` env var | `string` |
| `folders_to_include` | List of root folders to specifically include in an organization-level integration (All other root folders and projects will be excluded).  Format is 'folders/1234567890' | `set(string)` |

```hcl
terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

provider "google" {}

provider "lacework" {}

module "gcp_organization_level_config" {
  source          = "lacework/config/gcp"
  version         = "~> 2.2"
  org_integration = true
  organization_id = var.organization_id
  project_id      = "abc-demo-project-123"
  
  folders_to_include = [
    "folders/123456789012",
    "folders/345678901234"
  ]
}
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Terraform From Any Supported Host](https://docs.lacework.com/onboarding/gcp-compliance-and-audit-log-integration-terraform-from-any-supported-host)

