terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}


provider "google" {
  # credentials = file("svc.json") use export GOOGLE_CREDENTIALS
  region = local.region
  zone   = local.zone
}
