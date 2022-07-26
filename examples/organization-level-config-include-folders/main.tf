provider "google" {}

provider "lacework" {}

module "gcp_organization_level_config" {
  source = "../../"

  # Set this integration to be created at the Organization level,
  # a project id is needed since Lacework needs to deploy a few
  # resources and those will be created in the provided project
  org_integration = true
  organization_id = var.organization_id
  project_id      = "abc-demo-project-123"

  folders_to_include = [
    "folders/123456789012",
    "folders/345678901234"
  ]
}

variable "organization_id" {
  default = "my-organization-id"
}
