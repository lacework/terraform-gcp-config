# Integrate a Google Cloud Organization with Lacework for Configuration Assessment
The following provides an example of integrating an entire Google Cloud Organization with Lacework for Cloud Resource configuration assessment.

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
  source = "lacework/config/gcp"
  version = "~> 1.0"
  
  # Set this integration to be created at the Organization level,
  # a project id is needed since Lacework needs to deploy a few
  # resources and those will be created in the provided project
  org_integration = true
  organization_id = "my-organization-id"
  project_id      = "abc-demo-project-123"
}
```

Run Terraform:
```
$ terraform init
$ GOOGLE_CREDENTIALS=account.json GOOGLE_PROJECT=my-project terraform apply
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Terraform From Any Supported Host](https://support.lacework.com/hc/en-us/articles/360057065094-GCP-Compliance-and-Audit-Trail-Integration-Terraform-From-Any-Supported-Host)
