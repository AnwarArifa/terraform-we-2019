# Compute service needs to be enabled for all four new projects.
locals {
  host_npe_project_id = "${var.host_npe_project_id}"
  host_prd_project_id = "${var.host_prd_project_id}"

}

# Attach identity-npe project to the shared "host" project
resource "google_compute_shared_vpc_service_project" "identity_service_project" {
  host_project    = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-identity-npe"
}

# Attach carbon-predevops-npe  project to the shared "host" project
resource "google_compute_shared_vpc_service_project" "carbon_predevops_npe_project" {
  host_project    = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-carbon-predevops-npe"
}

# Attach carbon-predevsvcs-npe  project to the shared "host" project
resource "google_compute_shared_vpc_service_project" "carbon_predevsvcs_npe_project" {
  host_project    = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-carbon-predevsvcs-npe"
}

# Attach assetmgmt-npe project to the shared "host" project
resource "google_compute_shared_vpc_service_project" "assetmgmt_service_project" {
  host_project    = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-assetmgmt-npe"
}

# Attach Infrastructure-npe project to the shared "host" project
resource "google_compute_shared_vpc_service_project" "infra_per_npe_service_project" {
  host_project    = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-personalization-npe"
}

# Attach apigee-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "apigee_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-apigee-npe"
}

# Attach dataengg-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "dataengg_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-dataengg-npe"
}

# Attach daci-transform-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "daci_transform_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-daci-transform-npe"
}

# Attach daci-serve-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "daci_serve_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-daci-serve-npe"
}

# Attach daci-ingestion-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "daci_ingestion_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-daci-ingestion-npe"
}

# Attach telemetry-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "telemetry_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-telemetry-npe"
}


# Attach telemetry-prod project to shared "host" project
resource "google_compute_shared_vpc_service_project" "telemetry_prd_service_project" {
  host_project = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-telemetry-prd"
}

# Attach Assetmgmt-prd project to shared "host" project
resource "google_compute_shared_vpc_service_project" "assetmgmt_prd_service_project" {
  host_project = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-assetmgmt-prd"
}

# Attach cloud-goverance project to shared "host" project
resource "google_compute_shared_vpc_service_project" "cloud_governance_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "lws-cloud-governance-sandbox"
}

# Attach dataint-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "dataint_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-dataint-npe"
}

# Attach digital datascience project to shared "host" project
resource "google_compute_shared_vpc_service_project" "digital_datascience_npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-digital-ds-npe-1"
}


# Attach digital computeservice project to shared "host" project
resource "google_compute_shared_vpc_service_project" "compute_service_dev_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-compute-svc-dev"
}

resource "google_compute_shared_vpc_service_project" "compute_service_stage_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-compute-svc-stage"
}

resource "google_compute_shared_vpc_service_project" "compute_service_prd_service_project" {
  host_project = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-compute-svc-prd"
}

# Attach identity-prd project to the shared "host" project
resource "google_compute_shared_vpc_service_project" "identity_prd_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-identity-prd"
}

# Attach daci-ds-npe project to shared "host" project
resource "google_compute_shared_vpc_service_project" "daci-ds-npe_service_project" {
  host_project = "${local.host_npe_project_id}"
  service_project = "${var.daci_ds_npe_project_id}"
}


# Attach carbon-predevdbms-npe  project to the shared "host" project
resource "google_compute_shared_vpc_service_project" "carbon_predevdbms_npe_project" {
  host_project    = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-carbon-dbms-predev"
}

resource "google_compute_shared_vpc_service_project" "carbon_search_platform_npe_project" {
  host_project    = "${local.host_npe_project_id}"
  service_project = "gcp-ushi-search-platform-npe"
}

# Attached DACI project fo the shared "host" project (All projects under datascience--prod/qa will be in prod network)
resource "google_compute_shared_vpc_service_project" "daci_analyze_qa_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-daci-analyze-qa"
}

resource "google_compute_shared_vpc_service_project" "daci_ingest_qa_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-daci-ingest-qa"
}

resource "google_compute_shared_vpc_service_project" "daci_process_qa_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-daci-process-qa"
}

resource "google_compute_shared_vpc_service_project" "daci_digital_qa_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-digital-ds-qa"
}

resource "google_compute_shared_vpc_service_project" "daci_analyze_prd_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-daci-analyze-prd"
}

resource "google_compute_shared_vpc_service_project" "daci_ingest_prd_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-daci-ingest-prd"
}

resource "google_compute_shared_vpc_service_project" "daci_process_prd_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-daci-process-prd"
}

resource "google_compute_shared_vpc_service_project" "daci_digital_prd_service_project" {
  host_project    = "${local.host_prd_project_id}"
  service_project = "gcp-ushi-digital-ds-prd"
}