# Integrate Multiple Google Cloud Projects with Lacework for Configuration Assessment
The following provides an example of integrating multiple Google Cloud projects with Lacework for cloud resource configuration assessment.

The fields required for this example are:

| Name       | Description                                                                                 | Type     |
|------------|---------------------------------------------------------------------------------------------|----------|
| `projects` | The ID of each project, which will be used to deploy required resources for the integration | `map` |


```hcl
provider "google" {
  project = keys(var.projects)[0]
}

provider "lacework" {}

variable "projects" {
  description = "Map of project configuration with Lacework."
  type        = map
  default     = {
    project-id-1 = "first project",
    project-id-2 = "second project"
  }
}

module "gcp_project_config" {
  source  = "lacework/config/gcp"
  version = "~> 2.0"

  for_each   = var.projects
  project_id = each.key
}
```

Run Terraform:
```
$ terraform init
$ GOOGLE_CREDENTIALS=account.json terraform apply
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Configure Multiple Porjects with Terraform](https://docs.lacework.com/onboarding/gcp-compliance-and-audit-log-integration-terraform-using-google-cloud-shell#configure-multiple-projects-with-terraform)
