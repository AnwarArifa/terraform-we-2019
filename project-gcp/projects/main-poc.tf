module "project-factory-daci-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"

  name              = "gcp-ushi-daci-npe"
  random_project_id = "false"

  org_id          = "${var.organization_id}"
  billing_account = "${var.billing_account}"

  credentials_path = "${local.credentials_file_path}"

  folder_id = "${local.poc_folder_id}"

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}


############# Apigee POC #################
module "project-factory-apigee-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-apigee-npe"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.digital_poc_folder_id}"
  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
  ]
}


############# dataengg POC #################
module "project-factory-dataengg-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-dataengg-npe"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_folder_id}"
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


############# Nondigital Datascience POC #################
module "project-factory-daci-ingestion-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-ingestion-npe"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_folder_id}"
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


############# Nondigital DACI Transform #################
module "project-factory-daci-transform-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-transform-npe"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_folder_id}"
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

############# Nondigital DACI Serve #################
module "project-factory-daci-serve-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-serve-npe"
    random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_folder_id}"
  folder_id = "${var.digital_npe_folder_id}"
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

############# telemetry POC #################
module "project-factory-telemetry-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-telemetry-npe"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.digital_npe_folder_id}"
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

############# telemetry POC #################
module "project-factory-telemetry-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-telemetry-prd"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.digital_prd_folder_id}"
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

############# CloudGovernance Sandbox POC #################
module "project-cloudgovernance-sandbox" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "lws-cloud-governance-sandbox"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.cloudgovernance_folder_id}"
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

############# DataIntegration Npe POC #################
module "project-factory-dataint-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-dataint-npe"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_folder_id}"
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


// ############# Nondigital DACI Ds #################
module "project-factory-daci-ds-npe" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-ds-npe"
  random_project_id = "true"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

// ################ NonDigital -->  DataScience --> QA projects  ########################
module "project-factory-nondigital-ds-ingest-qa" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-ingest-qa"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_qa_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

module "project-factory-nondigital-ds-process-qa" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-process-qa"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_qa_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

module "project-factory-nondigital-ds-analyze-qa" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-analyze-qa"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_qa_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

module "project-factory-nondigital-ds-digital-qa" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-digital-ds-qa"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.digital_datascience_prod_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

// ################ NonDigital -->  DataScience --> PROD projects  ########################
module "project-factory-nondigital-ds-ingest-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-ingest-prd"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_prod_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

module "project-factory-nondigital-ds-process-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-process-prd"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_prod_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

module "project-factory-nondigital-ds-analyze-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-daci-analyze-prd"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.nondigital_datascience_prod_folder_id}"
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
    "tpu.googleapis.com",
  ]
}

module "project-factory-nondigital-ds-digital-prd" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-project-factory.git?ref=v2.1.0"
  name = "gcp-ushi-digital-ds-prd"
  random_project_id = "false"
  org_id = "${var.organization_id}"
  billing_account = "${var.billing_account}"
  credentials_path = "${var.credentials_path}"
  folder_id = "${var.digital_datascience_prod_folder_id}"
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
    "tpu.googleapis.com",
  ]
}
