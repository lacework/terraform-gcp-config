locals {
  project_id = length(var.project_id) > 0 ? var.project_id : data.google_project.selected[0].project_id

  exclude_folders = length(var.folders_to_exclude) != 0
  include_folders = length(var.folders_to_include) != 0

  service_account_name = var.use_existing_service_account ? (
    var.service_account_name
    ) : (
    length(var.service_account_name) > 0 ? var.service_account_name : "${var.prefix}-${random_id.uniq.hex}"
  )

  service_account_json_key = jsondecode(var.use_existing_service_account ? (
    base64decode(var.service_account_private_key)
    ) : (
    base64decode(module.lacework_cfg_svc_account.private_key)
  ))

  skip_iam_grants = var.use_existing_service_account && var.skip_iam_grants

  default_roles = [
    "roles/browser",
    "roles/iam.securityReviewer",
    "roles/cloudasset.viewer",
    "roles/policyanalyzer.activityAnalysisViewer"
  ]

  custom_role_permissions = [
    "bigquery.datasets.get",
    "compute.projects.get",
    "pubsub.topics.get",
    "storage.buckets.get",
    "compute.sslPolicies.get"
  ]

  folders = var.org_integration ? (
    local.exclude_folders ? setsubtract(data.google_folders.org_folders[0].folders[*].name, var.folders_to_exclude) :
    local.include_folders ? var.folders_to_include : []
  ) : []

  root_projects = (var.org_integration && local.exclude_folders && var.include_root_projects) ? (
    data.google_projects.org_projects[0].projects[*].project_id
  ) : []

  folder_roles_product = tolist(setproduct(local.folders, local.default_roles))

  root_project_roles_product = tolist(setproduct(local.root_projects, local.default_roles))

  version_file   = "${abspath(path.module)}/VERSION"
  module_name    = "terraform-gcp-config"
  module_version = fileexists(local.version_file) ? file(local.version_file) : ""
}

resource "random_id" "uniq" {
  byte_length = 4
}

data "google_project" "selected" {
  count = length(var.project_id) > 0 ? 0 : 1
}

module "lacework_cfg_svc_account" {
  source               = "lacework/service-account/gcp"
  version              = "~> 2.0"
  create               = var.use_existing_service_account ? false : true
  service_account_name = local.service_account_name
  project_id           = local.project_id
}

resource "google_project_iam_custom_role" "lacework_project_custom_role" {
  count       = (!local.skip_iam_grants && !var.org_integration) ? 1 : 0
  project     = local.project_id
  role_id     = "lwComplianceRole_${random_id.uniq.hex}"
  title       = "Lacework Compliance Role"
  description = "Lacework Compliance Role"
  permissions = local.custom_role_permissions
}

resource "google_project_iam_member" "lacework_project_custom_role_binding" {
  count      = (!local.skip_iam_grants && !var.org_integration) ? 1 : 0
  project    = local.project_id
  role       = google_project_iam_custom_role.lacework_project_custom_role.0.name
  member     = "serviceAccount:${local.service_account_json_key.client_email}"
  depends_on = [google_project_iam_custom_role.lacework_project_custom_role]
}

resource "google_project_iam_member" "lacework_project_roles_binding" {
  for_each   = toset((!local.skip_iam_grants && !var.org_integration) ? local.default_roles : [])
  project    = local.project_id
  role       = each.value
  member     = "serviceAccount:${local.service_account_json_key.client_email}"
  depends_on = [google_project_iam_custom_role.lacework_project_custom_role]
}

data "google_folders" "org_folders" {
  count     = (var.org_integration && local.exclude_folders) ? 1 : 0
  parent_id = "organizations/${var.organization_id}"
}

data "google_projects" "org_projects" {
  count  = (local.exclude_folders && var.include_root_projects) ? 1 : 0
  filter = "parent.id=${var.organization_id}"
}

resource "google_organization_iam_custom_role" "lacework_organization_custom_role" {
  count       = (!local.skip_iam_grants && var.org_integration) ? 1 : 0
  role_id     = "lwOrgComplianceRole_${random_id.uniq.hex}"
  org_id      = var.organization_id
  title       = "Lacework Org Compliance Role"
  description = "Lacework Org Compliance Role"
  permissions = local.custom_role_permissions
}

resource "google_organization_iam_member" "lacework_organization_custom_role_binding" {
  count      = (!local.skip_iam_grants && var.org_integration) ? 1 : 0
  org_id     = var.organization_id
  role       = google_organization_iam_custom_role.lacework_organization_custom_role.0.name
  member     = "serviceAccount:${local.service_account_json_key.client_email}"
  depends_on = [google_organization_iam_custom_role.lacework_organization_custom_role]
}

resource "google_organization_iam_member" "lacework_organization_roles_binding" {
  for_each   = toset((!local.skip_iam_grants && var.org_integration) ? local.default_roles : [])
  org_id     = var.organization_id
  role       = each.value
  member     = "serviceAccount:${local.service_account_json_key.client_email}"
  depends_on = [google_organization_iam_custom_role.lacework_organization_custom_role]
}

resource "google_folder_iam_member" "lacework_folder_custom_role_binding" {
  for_each   = toset(!local.skip_iam_grants ? local.folders : [])
  folder     = each.value
  role       = google_organization_iam_custom_role.lacework_organization_custom_role.0.name
  member     = "serviceAccount:${local.service_account_json_key.client_email}"
  depends_on = [google_organization_iam_custom_role.lacework_organization_custom_role]
}

resource "google_folder_iam_member" "lacework_folder_roles_binding" {
  count      = !local.skip_iam_grants ? length(local.folder_roles_product) : 0
  folder     = local.folder_roles_product[count.index][0]
  role       = local.folder_roles_product[count.index][1]
  member     = "serviceAccount:${local.service_account_json_key.client_email}"
  depends_on = [google_organization_iam_custom_role.lacework_organization_custom_role]
}

resource "google_project_iam_member" "lacework_root_project_custom_role_binding" {
  for_each = toset(!local.skip_iam_grants ? local.root_projects : [])
  project  = each.value
  role     = google_organization_iam_custom_role.lacework_organization_custom_role.0.name
  member   = "serviceAccount:${local.service_account_json_key.client_email}"
}

resource "google_project_iam_member" "lacework_root_project_roles_binding" {
  count   = !local.skip_iam_grants ? length(local.root_project_roles_product) : 0
  project = local.root_project_roles_product[count.index][0]
  role    = local.root_project_roles_product[count.index][1]
  member  = "serviceAccount:${local.service_account_json_key.client_email}"
}

resource "google_project_service" "required_apis" {
  for_each = var.required_config_apis
  project  = local.project_id
  service  = each.value

  disable_on_destroy = false
}

# wait for X seconds for things to settle down in the GCP side
# before trying to create the Lacework external integration
resource "time_sleep" "wait_time" {
  create_duration = var.wait_time
  depends_on = [
    module.lacework_cfg_svc_account,
    google_project_service.required_apis,
    google_organization_iam_member.lacework_organization_custom_role_binding,
    google_organization_iam_member.lacework_organization_roles_binding,
    google_project_iam_member.lacework_project_custom_role_binding,
    google_project_iam_member.lacework_project_roles_binding,
    google_folder_iam_member.lacework_folder_custom_role_binding,
    google_folder_iam_member.lacework_folder_roles_binding,
    google_project_iam_member.lacework_root_project_custom_role_binding,
    google_project_iam_member.lacework_root_project_roles_binding
  ]
}

resource "lacework_integration_gcp_cfg" "default" {
  name           = var.lacework_integration_name
  resource_id    = var.org_integration ? var.organization_id : module.lacework_cfg_svc_account.project_id
  resource_level = var.org_integration ? "ORGANIZATION" : "PROJECT"
  credentials {
    client_id      = local.service_account_json_key.client_id
    private_key_id = local.service_account_json_key.private_key_id
    client_email   = local.service_account_json_key.client_email
    private_key    = local.service_account_json_key.private_key
  }
  depends_on = [time_sleep.wait_time]
}

data "lacework_metric_module" "lwmetrics" {
  name    = local.module_name
  version = local.module_version
}
