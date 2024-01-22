terraform {
  required_version = ">= 0.14.0"

  required_providers {
    google = ">= 4.4.0"
    time   = "~> 0.6"
    lacework = {
      source  = "lacework/lacework"
      version = "~> 1.18"
    }
  }
}
