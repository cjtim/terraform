terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.5.0"
    }
  }
}


provider "google" {
  # credentials = file("svc.json") use export GOOGLE_CREDENTIALS
  region = var.region
  zone   = var.zone
}
