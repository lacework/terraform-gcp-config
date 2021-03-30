# Integrate a Google Cloud Project with Lacework for Configuration Assessment
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

module "gcp_project_level_config" {
  source = "lacework/config/gcp"
  version = "~> 1.0"
}
```

Run Terraform:
```
$ terraform init
$ GOOGLE_CREDENTIALS=account.json GOOGLE_PROJECT=my-project terraform apply
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Terraform From Any Supported Host](https://support.lacework.com/hc/en-us/articles/360057065094-GCP-Compliance-and-Audit-Trail-Integration-Terraform-From-Any-Supported-Host)
