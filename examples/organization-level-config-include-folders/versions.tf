# required for Terraform 13
terraform {
  required_providers {
    google = "4.36.0"
    lacework = {
      source = "lacework/lacework"
    }
  }
}

