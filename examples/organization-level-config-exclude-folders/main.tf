provider "google" {}

provider "lacework" {}

module "gcp_organization_level_config" {
  source = "../../"

  # Set this integration to be created at the Organization level,
  # a project id is needed since Lacework needs to deploy a few
  # resources and those will be created in the provided project
  org_integration      = true
  organization_id      = var.organization_id
  project_id           = var.project_id
  exclude_folders      = true
  folders_to_exclude   = [
    "folders/578370918314", 
    "folders/1099205162015",
  ] 
}
