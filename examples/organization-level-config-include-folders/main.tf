provider "google" {}

provider "lacework" {}

variable "organization_id" {
  default = "my-organization-id"
}

module "gcp_organization_level_config" {
  org_integration = true
  organization_id = var.organization_id
  project_id      = "abc-demo-project-123"
  
  folders_to_include = [
    "folders/123456789012",
    "folders/345678901234"
  ]
}
