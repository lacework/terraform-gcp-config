# Integrate a Google Cloud Project with Lacework for Configuration Assessment
The following provides an example of integrating an entire Google Cloud Organization with Lacework for Cloud Resource configuration assessment.

The fields required for this example are:

| Name | Description | Type |
|------|-------------|------|
| `project_id` | The id of a Project, which will be used to deploy required resources for the integration. Note: if this is var is not explicitly set (as shown below), the provider will check for the presence of the `GOOGLE_PROJECT` env var | `string` |


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

module "gcp_project_level_config" {
  source = "lacework/config/gcp"
  version = "~> 2.0"
  project_id = "my-project-id"
}
```

Run Terraform:
```
$ terraform init
$ GOOGLE_CREDENTIALS=account.json GOOGLE_PROJECT=my-project terraform apply
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Terraform From Any Supported Host](https://docs.lacework.com/gcp-compliance-and-audit-log-integration-terraform-from-any-supported-host)
