provider "google" {}

provider "lacework" {}

variable "folders" {
  description = "Map of folder configuration with Lacework."
  type        = map
  default     = {
    folder-id-1 = "folders/00000000000"
    folder-id-2 = "folders/11111111111"
    folder-id-2 = "folders/22222222222"
  }
}

data "google_cloud_asset_search_all_resources" "folder_projects" {
  for_each    = var.folders
  scope       = each.value
  asset_types = ["cloudresourcemanager.googleapis.com/Project"]
}

locals {
  all_projects = flatten([
    for folder_key, folder_data in data.google_cloud_asset_search_all_resources.folder_projects : [
      for res in folder_data.results : {
        folder_key  = folder_key
        folder_id   = var.folders[folder_key]
        project_num = split("/", res.project)[1]
        project_id  = split("/", res.name)[length(split("/", res.name)) - 1]
        name        = res.display_name
        state       = res.state
      }
    ]
  ])

  project_map = {
    for p in local.all_projects :
    "${p.folder_key}-${p.project_id}" => p
    if p.state == "ACTIVE"
  }
}

module "gcp_folder_level_config" {
  source     = "lacework/config/gcp"

  for_each   = local.project_map
  project_id = each.value.project_id
}
