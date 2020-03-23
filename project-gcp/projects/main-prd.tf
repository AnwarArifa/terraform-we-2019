module "project-factory-network-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-digital-network-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.digital_network_folder_id}"
}

//Prod devops project
module "project-factory-devops-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-devops-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.prod_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

// Prod services project
module "project-factory-svcs-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-svcs-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.prod_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "containerscanning.googleapis.com",
    "pubsub.googleapis.com",
  ]
}

// Prod DBMS project
module "project-factory-dbms-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-dbms-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.prod_folder_id}"
}

// Prod Search project
module "project-factory-search-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-search-platform-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.prod_folder_id}"
}

// Prod Assetmgmt project - gcp-ushi-assetmgmt-prod
module "project-factory-assetmgmt-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-assetmgmt-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${var.infra_prd_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

// prod-identity project creation 
module "project-factory-identity-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-identity-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${var.integrations_prd_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "replicapool.googleapis.com",
    "replicapoolupdater.googleapis.com",
    "resourceviews.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "stackdriver.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "containerregistry.googleapis.com",
  ]
}

// digital compute services project (for PROD)###
module "project-factory-digital-cs-prod" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-compute-svc-prd"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${var.infra_prd_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "replicapool.googleapis.com",
    "replicapoolupdater.googleapis.com",
    "resourceviews.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "stackdriver.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "containerregistry.googleapis.com",
    "cloudtrace.googleapis.com"
  ]
} 