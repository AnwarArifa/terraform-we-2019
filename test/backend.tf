provider "google" {
  project = "${var.services_project}"
}

terraform {
  required_version = "0.11.7"

  backend "gcs" {}
}