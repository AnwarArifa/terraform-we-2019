provider "google" {}

provider "google-beta" {}

terraform {
  # required_version = "0.11.7"

  backend "gcs" {
    bucket = "terraform-lowes-project-v2"
    prefix = "terraform/state/lowes/platform/folders/v2/"
  }
}
