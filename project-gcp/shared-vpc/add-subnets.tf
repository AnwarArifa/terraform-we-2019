###########################################################################
########   Assign Subnet User privileges for identity-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "identity_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.ushi_identity_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.identity_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for identity-prod project  ########
###########################################################################
 resource "google_compute_subnetwork_iam_member" "identity_prod_cloudservices" {
    provider   = "google-beta"
    project    = "${var.host_prd_project_id}"
    region     = "${var.region_east4}"
    subnetwork = "prd-svcs-gce-subnet-1"
    role       = "roles/compute.networkUser"
    member     = "serviceAccount:${data.terraform_remote_state.project_output.ushi_identity_prd_project_number}@cloudservices.gserviceaccount.com"
    depends_on = ["google_compute_shared_vpc_service_project.identity_prd_service_project"]
  }

###########################################################################
########   Assign Subnet User privileges for carbon-predevops-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "predevops-npe_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-devops-gce-subnet"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.carbon_predevops_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.carbon_predevops_npe_project"]
}

###############################################################################################################################
########   Assign Subnet User privileges for carbon-predev-npe project for Admin cluster Subnet:npe-predevops-gke-subnet
 ########sservice-218236577026@container-engine-robot.iam.gserviceaccount.com for GKE admin cluster
################################################################################################################################
resource "google_compute_subnetwork_iam_member" "predev_admin-npe_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-predevops-gke-subnet"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:service-${data.terraform_remote_state.project_output.carbon_predevops_npe_project_number}@container-engine-robot.iam.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.carbon_predevops_npe_project"]
}

###############################################################################################################################
########   Assign Subnet User privileges for carbon-predevsvcs-npe project for Application cluster Subnet:npe-svcs-gke-subnet-0
 ########service-875471158340@container-engine-robot.iam.gserviceaccount.com for GKE application cluster
################################################################################################################################
resource "google_compute_subnetwork_iam_member" "predevsvcs_application-npe_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${element(var.gcp-regions, count.index)}"
  subnetwork = "${element(var.gcp_subnets_predev_svcs, count.index)}"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:service-${data.terraform_remote_state.project_output.carbon_predevsvcs_npe_project_number}@container-engine-robot.iam.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.carbon_predevsvcs_npe_project"]
}

###########################################################################################################################
########   Assign Subnet User privileges for carbon-predevops-npe project for Admin cluster Subnet :npe-predevops-gke-subnet
 ########
############################################################################################################################
resource "google_compute_subnetwork_iam_member" "predevops_admin-npe_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-predevops-gke-subnet"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.carbon_predevops_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.carbon_predevops_npe_project"]
}

###############################################################################################################################
########   Assign Subnet User privileges for carbon-predevsvcs-npe project for Application cluster Subnet:npe-svcs-gke-subnet-0
 ########
################################################################################################################################
resource "google_compute_subnetwork_iam_member" "predevops_application-npe_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-svcs-gke-subnet-0"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.carbon_predevsvcs_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.carbon_predevsvcs_npe_project"]
}

###########################################################################
########   Assign Subnet User privileges for assetmgmt-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "assetmgmt_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.ushi_assetmgmt_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.assetmgmt_service_project"]
}

#########################################################################################
########  Assign Subnet User privileges for infra-personalization-npe project  ########
#########################################################################################
resource "google_compute_subnetwork_iam_member" "infra_personalization_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.ushi_infra_personal_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.infra_per_npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for apigee-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "apigee_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-apigee_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.apigee_npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for daci-transform-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "daci-transform-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-daci-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-daci-transform-npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_transform_npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for daci-serve-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "daci-serve-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-daci-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-daci-serve-npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_serve_npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for daci-ingestion-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "daci-ingestion-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-daci-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-daci-ingestion-npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_ingestion_npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for dataengg-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "dataengg-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-deng-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-dataengg_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.dataengg_npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for telemetry-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "telemetry-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  count      = "${length(var.gcp-regions)}"
  region     = "${element(var.gcp-regions, count.index)}"
  subnetwork = "${element(var.gcp-subnets, count.index)}"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-telemetry-npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.telemetry_npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for telemetry-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "telemetry-prd" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  count      = "${length(var.gcp-regions)}"
  region     = "${element(var.gcp-regions, count.index)}"
  subnetwork = "${element(var.gcp-subnets-telemetry-prd, count.index)}"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-telemetry-prd_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.telemetry_npe_service_project"]
}


###########################################################################
########   Assign Subnet User privileges for assetmgmt-prd project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "assetmgmt_cloudservices_prd" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.ushi_infra_assetmgt_prd_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.assetmgmt_prd_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for Cloud Governance Sandbox project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "cloud-governance-sandbox" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-daci-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.cloudgovernance_sandbox_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.cloud_governance_service_project"]
}

###############################################################################################################################
########   Assign Subnet User privileges for gcp-ushi-carbon-svcs-dev project for Application cluster Subnet:npe-central1-svcs-gke-subnet-2
 ########service-783790120134@container-engine-robot.iam.gserviceaccount.com for GKE application cluster
################################################################################################################################
resource "google_compute_subnetwork_iam_member" "dev_application-npe_subnet_permission" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_central1}"
  subnetwork = "${element(var.gcp_subnets_dev_svcs, count.index)}"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:service-${data.terraform_remote_state.project_output.carbon_svcs_dev_project_number}@container-engine-robot.iam.gserviceaccount.com"
}

###############################################################################################################################
########   Assign Subnet User privileges for gcp-ushi-carbon-svcs-stage project for Application cluster Subnet:npe-central1-svcs-gke-subnet-3
 ########service-885366354567@container-engine-robot.iam.gserviceaccount.com for GKE application cluster
################################################################################################################################
resource "google_compute_subnetwork_iam_member" "stage_application-npe_subnet_permission" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_central1}"
  subnetwork = "${element(var.gcp_subnets_stage_svcs, count.index)}"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:service-${data.terraform_remote_state.project_output.carbon_svcs_stage_project_number}@container-engine-robot.iam.gserviceaccount.com"
}

###########################################################################
########   Assign Subnet User privileges for data integration  project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "dataint-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-dataintegration-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-dataint-npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.dataint_npe_service_project"]
}

###########################################################################
#  Assign Subnet User privileges for digital datascience  project         #
###########################################################################
resource "google_compute_subnetwork_iam_member" "digital-datascience-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  count      = "${length(var.digital_datascience_npe_subnets)}"
  region     = "${var.region_east4}"
  subnetwork = "${element(var.digital_datascience_npe_subnets, count.index)}"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-digital-ds-npe-1_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.digital_datascience_npe_service_project"]
}


#########################################################################################
########  Assign Subnet User privileges for infra-personalization-npe project  ########
#########################################################################################
resource "google_compute_subnetwork_iam_member" "infra_compute-service-dev" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-compute-service-dev_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.compute_service_dev_service_project"]
}

resource "google_compute_subnetwork_iam_member" "infra_compute-service-stage" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-compute-service-stage_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.compute_service_stage_service_project"]
}

resource "google_compute_subnetwork_iam_member" "infra_compute-service-prd" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-compute-service-prod_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.compute_service_prd_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for daci ds npe  project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "daci-ds-npe" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-daci-ds-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-daci-ds-npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci-ds-npe_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for carbon-predevdbms-npe project  ########
###########################################################################
resource "google_compute_subnetwork_iam_member" "predevdbms-npe_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "npe-dbms-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.carbon_predevdbms_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.carbon_predevdbms_npe_project"]
}

###########################################################################
########   Assign Subnet User privileges for gcp-ushi-search-platform-npe
###########################################################################
resource "google_compute_subnetwork_iam_member" "search-platform-npe_cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_npe_project_id}"
  region     = "${var.region_central1}"
  subnetwork = "npe-central1-svcs-gce-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.search_npe_project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.carbon_search_platform_npe_project"]
}

###########################################################################
########   Assign Subnet User privileges for DACI QA Projects
###########################################################################
resource "google_compute_subnetwork_iam_member" "daci-analyze-qa-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-daci-qa-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-analyze-qa-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_analyze_qa_service_project"]
}

resource "google_compute_subnetwork_iam_member" "daci-ingest-qa-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-daci-qa-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-process-qa-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_ingest_qa_service_project"]
}

resource "google_compute_subnetwork_iam_member" "daci-process-qa-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-daci-qa-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-ingest-qa-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_process_qa_service_project"]
}

resource "google_compute_subnetwork_iam_member" "daci-digital-qa-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-dds-qa-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-digital-qa-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_digital_qa_service_project"]
}

###########################################################################
########   Assign Subnet User privileges for DACI PROD Projects
###########################################################################
resource "google_compute_subnetwork_iam_member" "daci-analyze-prd-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-daci-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-analyze-prd-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_analyze_prd_service_project"]
}

resource "google_compute_subnetwork_iam_member" "daci-ingest-prd-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-daci-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-process-prd-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_ingest_prd_service_project"]
}

resource "google_compute_subnetwork_iam_member" "daci-process-prd-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-daci-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-ingest-prd-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_process_prd_service_project"]
} 

resource "google_compute_subnetwork_iam_member" "daci-digital-prd-cloudservices" {
  provider   = "google-beta"
  project    = "${var.host_prd_project_id}"
  region     = "${var.region_east4}"
  subnetwork = "prd-dds-svcs-subnet-1"
  role       = "roles/compute.networkUser"
  member     = "serviceAccount:${data.terraform_remote_state.project_output.gcp-ushi-nondigital-datascience-digital-prd-project_number}@cloudservices.gserviceaccount.com"
  depends_on = ["google_compute_shared_vpc_service_project.daci_digital_prd_service_project"]
}  