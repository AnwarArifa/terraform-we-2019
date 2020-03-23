provider "google" {}

provider "google-beta" {}

terraform {
  # required_version = "0.11.7"

  backend "gcs" {
    bucket = "terraform-lowes-project-v2"
    prefix = "terraform/state/lowes/platform/shared-vpc/v2/"
  }
}

data "terraform_remote_state" "project_output" {
  backend = "gcs"

  config {
    bucket = "terraform-lowes-project-v2"
    prefix = "terraform/state/lowes/platform/projects/v2/"
  }
}
