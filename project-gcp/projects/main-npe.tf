locals {
  credentials_file_path             = "${var.credentials_path}"
  poc_folder_id                     = "${var.digital_poc_folder_id}"
  npe_folder_id                     = "${var.digital_npe_folder_id}"
  prod_folder_id                    = "${var.digital_prd_folder_id}"
  digital_network_folder_id         = "${var.digital_network_folder_id}"
  integrations_npe_folder_id        = "${var.integrations_npe_folder_id}"
  assetmgmt_npe_folder_id           = "${var.assetmgmt_npe_folder_id}"
  infra_npe_folder_id               = "${var.infra_npe_folder_id}"
  digital_datascience_npe_folder_id = "${var.digital_datascience_npe_folder_id}"
}

module "project-factory-onprem" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-platform-gkeonprm-npe"
  random_project_id = "false"

  org_id          = "${var.organization_id}"
  billing_account = "${var.billing_account}"

  credentials_path = "${local.credentials_file_path}"

  folder_id = "${local.npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

module "project-factory-network-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-digital-network-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.digital_network_folder_id}"
}

module "project-factory-carbon-sandbox-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-sandbox-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "vision.googleapis.com",
  ]
}

module "project-factory-carbon-devops-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-devops-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

module "project-factory-carbon-svcs-dev" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-svcs-dev"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "containerscanning.googleapis.com",
  ]
}

module "project-factory-carbon-svcs-stage" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-svcs-stage"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

module "project-factory-carbon-dbms-dev" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-dbms-dev"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"
}

module "project-factory-carbon-dbms-stage" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-dbms-stage"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"
}

module "project-factory-search-platform" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-search-platform-npe"
  random_project_id = "false"

  org_id          = "${var.organization_id}"
  billing_account = "${var.billing_account}"

  credentials_path = "${local.credentials_file_path}"

  folder_id = "${local.npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "dataproc.googleapis.com",
  ]
}

// npe-integrations project creation (for npe)
module "project-factory-identity-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-identity-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.integrations_npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

// predevops-npe project creation (for npe)
module "project-factory-predevops-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-predevops-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"

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

// predevsvcs-npe project creation (for npe)
module "project-factory-predevsvcs-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-predevsvcs-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"

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
    "cloudtrace.googleapis.com",
  ]
}

// predevdbms-npe project creation (for npe)
module "project-factory-predevdbms-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-dbms-predev"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"
  auto_create_network = "false"

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
    "cloudtrace.googleapis.com",
  ]
}


// npe-assetmgmt project creation (for npe)
module "project-factory-assetmgmt-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-assetmgmt-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.assetmgmt_npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

// Sample project creating for testing shared subnet at org level IAM mappiing
module "project-factory-shared-network-testing-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-carbon-sn-testing-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"

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
    "cloudtrace.googleapis.com",
  ]
}

// npe-personalization project creation (for npe)
module "project-factory-infra-personal-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-personalization-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.infra_npe_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}

// digital datascience project creation (for npe)###
module "project-factory-digital-ds-npe-1" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-digital-ds-npe-1"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.digital_datascience_npe_folder_id}"

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

// digital compute science project creation (for DEV)###
module "project-factory-digital-cs-dev" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-compute-svc-dev"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.infra_npe_folder_id}"

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

// digital compute science project creation (for DEV)###
module "project-factory-digital-cs-stage" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-compute-svc-stage"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.infra_npe_folder_id}"

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

// gcp-ushi-onprem-ops-npe project creation (for npe)
module "project-factory-onprem-ops-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-onprem-ops-npe"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"
  auto_create_network = "false"

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
    "cloudtrace.googleapis.com",
  ]
}


// gcp-ushi-carbon-stores-npe project creation (for npe)
module "project-factory-carbon-stores" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-carbon-stores"
  random_project_id = "false"
  org_id            = "${var.organization_id}"
  billing_account   = "${var.billing_account}"
  credentials_path  = "${local.credentials_file_path}"
  folder_id         = "${local.npe_folder_id}"
 

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
    "cloudtrace.googleapis.com",
  ]
}


