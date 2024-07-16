provider "google" {}

provider "lacework" {}

module "gcp_project_level_config" {
  source = "../../"

  # Skip custom role creation
  skip_iam_grants = true
  # Provide an existing service account
  use_existing_service_account = true
  service_account_name         = google_service_account.lacework_gcp_compliance_config.name
  service_account_private_key  = google_service_account_key.lacework_sa_compliance_key.private_key
}

resource "google_service_account" "lacework_gcp_compliance_config" {
  account_id   = "lacework-sa-compliance"
  description  = "Service account used by lacework for GCP compliance config"
  display_name = "Lacework Compliance"
  project      = var.project_id
}

resource "google_project_iam_member" "lacework_gcp_compliance_role" {
  project = var.project_id
  role    = "projects/${var.project_id}/roles/lacework.gcpCompliance" // already created custom role
  member  = "serviceAccount:${google_service_account.lacework_gcp_compliance_config.email}"
}

resource "google_service_account_key" "lacework_sa_compliance_key" {
  service_account_id = google_service_account.lacework_gcp_compliance_config.name
}

variable "project_id" {
  default = "my-project-id"
}