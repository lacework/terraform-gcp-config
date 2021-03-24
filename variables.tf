variable "org_integration" {
  type        = bool
  default     = false
  description = "If set to true, configure an organization level integration"
}

variable "organization_id" {
  type        = string
  default     = ""
  description = "The organization ID, required if org_integration is set to true"
}

variable "project_id" {
  type        = string
  default     = ""
  description = "A project ID different from the default defined inside the provider"
}

variable "use_existing_service_account" {
  type        = bool
  default     = false
  description = "Set this to true to use an existing Service Account"
}

variable "service_account_name" {
  type        = string
  default     = ""
  description = "The Service Account name (required when use_existing_service_account is set to true). This can also be used to specify the new service account name when use_existing_service_account is set to false"
}

variable "service_account_private_key" {
  type        = string
  default     = ""
  description = "The private key in JSON format, base64 encoded (required when use_existing_service_account is set to true)"
}

variable "lacework_integration_name" {
  type    = string
  default = "TF config"
}

variable "required_config_apis" {
  type = map
  default = {
    iam               = "iam.googleapis.com"
    kms               = "cloudkms.googleapis.com"
    dns               = "dns.googleapis.com"
    pubsub            = "pubsub.googleapis.com"
    compute           = "compute.googleapis.com"
    logging           = "logging.googleapis.com"
    bigquery          = "bigquery.googleapis.com"
    sqladmin          = "sqladmin.googleapis.com"
    containers        = "container.googleapis.com"
    serviceusage      = "serviceusage.googleapis.com"
    resourcemanager   = "cloudresourcemanager.googleapis.com"
    storage_component = "storage-component.googleapis.com"
  }
}

variable "prefix" {
  type        = string
  default     = "lw-cfg"
  description = "The prefix that will be use at the beginning of every generated resource"
}

variable "wait_time" {
  type        = string
  default     = "10s"
  description = "Amount of time to wait before the next resource is provisioned."
}
