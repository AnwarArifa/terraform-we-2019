##############################################################
# IAM management service account for gcp-ushi-platform-ops-npe
##############################################################
resource "google_service_account" "terraform-iam-ops-npe" {
  project      = "gcp-ushi-platform-ops-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-iam-ops-npe_policy" {
  depends_on = ["google_service_account.terraform-iam-ops-npe"]
  project    = "${google_service_account.terraform-iam-ops-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-iam-ops-npe.account_id}@${google_service_account.terraform-iam-ops-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-platform-ops-prd
##############################################################
resource "google_service_account" "terraform-iam-ops-prd" {
  project      = "gcp-ushi-platform-ops-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-iam-ops-prd_policy" {
  depends_on = ["google_service_account.terraform-iam-ops-prd"]
  project    = "${google_service_account.terraform-iam-ops-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-iam-ops-prd.account_id}@${google_service_account.terraform-iam-ops-prd.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-inventory-npe
##############################################################
resource "google_service_account" "terraform-iam-inventory-npe" {
  project      = "gcp-ushi-inventory-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-iam-inventory-npe_policy" {
  depends_on = ["google_service_account.terraform-iam-inventory-npe"]
  project    = "${google_service_account.terraform-iam-inventory-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-iam-inventory-npe.account_id}@${google_service_account.terraform-iam-inventory-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-digital-network-npe
##############################################################
resource "google_service_account" "terraform-iam-network-npe" {
  project      = "gcp-ushi-digital-network-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-iam-network-npe_policy" {
  depends_on = ["google_service_account.terraform-iam-network-npe"]
  project    = "${google_service_account.terraform-iam-network-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-iam-network-npe.account_id}@${google_service_account.terraform-iam-network-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-digital-network-prd
##############################################################
resource "google_service_account" "terraform-iam-network-prd" {
  project      = "gcp-ushi-digital-network-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-iam-network-prd_policy" {
  depends_on = ["google_service_account.terraform-iam-network-prd"]
  project    = "${google_service_account.terraform-iam-network-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-iam-network-prd.account_id}@${google_service_account.terraform-iam-network-prd.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-carbon-sandbox-npe
##############################################################
resource "google_service_account" "terraform-carbon-sandbox-npe" {
  project      = "gcp-ushi-carbon-sandbox-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-sandbox-npe_policy" {
  depends_on = ["google_service_account.terraform-carbon-sandbox-npe"]
  project    = "${google_service_account.terraform-carbon-sandbox-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-sandbox-npe.account_id}@${google_service_account.terraform-carbon-sandbox-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-carbon-devops-npe
##############################################################
resource "google_service_account" "terraform-carbon-devops-npe" {
  project      = "gcp-ushi-carbon-devops-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-devops-npe_policy" {
  depends_on = ["google_service_account.terraform-carbon-devops-npe"]
  project    = "${google_service_account.terraform-carbon-devops-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-devops-npe.account_id}@${google_service_account.terraform-carbon-devops-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-carbon-svcs-dev
##############################################################
resource "google_service_account" "terraform-carbon-svcs-dev" {
  project      = "gcp-ushi-carbon-svcs-dev"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-svcs-dev_policy" {
  depends_on = ["google_service_account.terraform-carbon-svcs-dev"]
  project    = "${google_service_account.terraform-carbon-svcs-dev.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-svcs-dev.account_id}@${google_service_account.terraform-carbon-svcs-dev.project}.iam.gserviceaccount.com"
}

################################################################
# Monitoring agent service account for gcp-ushi-carbon-svcs-dev
################################################################
resource "google_service_account" "monitoring-carbon-svcs-dev" {
  project      = "gcp-ushi-carbon-svcs-dev"
  account_id   = "monitoring-agent"
  display_name = "monitoring-agent"
}

resource "google_project_iam_member" "monitoring-carbon-svcs-dev_policy" {
  depends_on = ["google_service_account.monitoring-carbon-svcs-dev"]
  project    = "${google_service_account.monitoring-carbon-svcs-dev.project}"
  count      = "${length(var.monitoring_sa_role_binding)}"
  role       = "${element(var.monitoring_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.monitoring-carbon-svcs-dev.account_id}@${google_service_account.monitoring-carbon-svcs-dev.project}.iam.gserviceaccount.com"
}

################################################################
# Restricted GCR service account for gcp-ushi-carbon-svcs-dev
################################################################
resource "google_service_account" "gcr-carbon-svcs-dev" {
  project      = "gcp-ushi-carbon-svcs-dev"
  account_id   = "gcr-service-account"
  display_name = "gcr-service-account"
}

resource "google_service_account" "gcr-cleaner-svcs-dev" {
  project      = "gcp-ushi-carbon-svcs-dev"
  account_id   = "gcr-cleaner-sa"
  display_name = "gcr-cleaner-sa"
}

resource "google_storage_bucket_iam_binding" "binding-gcr-carbon-svcs-dev-artifacts" {
  depends_on = ["google_service_account.gcr-carbon-svcs-dev", "google_service_account.gcr-cleaner-svcs-dev"]
  bucket     = "artifacts.${google_service_account.gcr-carbon-svcs-dev.project}.appspot.com"
  role       = "roles/storage.admin"

  members = [
    "serviceAccount:${google_service_account.gcr-carbon-svcs-dev.account_id}@${google_service_account.gcr-carbon-svcs-dev.project}.iam.gserviceaccount.com",
    "serviceAccount:${google_service_account.gcr-cleaner-svcs-dev.account_id}@${google_service_account.gcr-cleaner-svcs-dev.project}.iam.gserviceaccount.com",
  ]
}

resource "google_project_iam_member" "gcr-cleaner-svcs-dev" {
  depends_on = ["google_service_account.gcr-cleaner-svcs-dev"]
  project    = "${google_service_account.gcr-cleaner-svcs-dev.project}"
  role       = "roles/container.viewer"
  member     = "serviceAccount:${google_service_account.gcr-cleaner-svcs-dev.account_id}@${google_service_account.gcr-cleaner-svcs-dev.project}.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "gcr-cleaner-svcs-stage" {
  depends_on = ["google_service_account.gcr-cleaner-svcs-dev"]
  project    = "gcp-ushi-carbon-svcs-stage"
  role       = "roles/container.viewer"
  member     = "serviceAccount:${google_service_account.gcr-cleaner-svcs-dev.account_id}@${google_service_account.gcr-cleaner-svcs-dev.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-carbon-svcs-stage
##############################################################
resource "google_service_account" "terraform-carbon-svcs-stage" {
  project      = "gcp-ushi-carbon-svcs-stage"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-svcs-stage_policy" {
  depends_on = ["google_service_account.terraform-carbon-svcs-stage"]
  project    = "${google_service_account.terraform-carbon-svcs-stage.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-svcs-stage.account_id}@${google_service_account.terraform-carbon-svcs-stage.project}.iam.gserviceaccount.com"
}

#################################################################
# Monitoring agent service account for gcp-ushi-carbon-svcs-stage
#################################################################
resource "google_service_account" "monitoring-carbon-svcs-stg" {
  project      = "gcp-ushi-carbon-svcs-stage"
  account_id   = "monitoring-agent"
  display_name = "monitoring-agent"
}

resource "google_project_iam_member" "monitoring-carbon-svcs-stg_policy" {
  depends_on = ["google_service_account.monitoring-carbon-svcs-stg"]
  project    = "${google_service_account.monitoring-carbon-svcs-stg.project}"
  count      = "${length(var.monitoring_sa_role_binding)}"
  role       = "${element(var.monitoring_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.monitoring-carbon-svcs-stg.account_id}@${google_service_account.monitoring-carbon-svcs-stg.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-carbon-dbms-dev
##############################################################
resource "google_service_account" "terraform-carbon-dbms-dev" {
  project      = "gcp-ushi-carbon-dbms-dev"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-dbms-dev_policy" {
  depends_on = ["google_service_account.terraform-carbon-dbms-dev"]
  project    = "${google_service_account.terraform-carbon-dbms-dev.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-dbms-dev.account_id}@${google_service_account.terraform-carbon-dbms-dev.project}.iam.gserviceaccount.com"
}


##############################################################
# IAM management service account for gcp-ushi-carbon-predevdbms-dev
##############################################################
resource "google_service_account" "terraform-carbon-dbms-predev" {
  project      = "gcp-ushi-carbon-dbms-predev"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-dbms-predev_policy" {
  depends_on = ["google_service_account.terraform-carbon-dbms-predev"]
  project    = "${google_service_account.terraform-carbon-dbms-predev.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-dbms-predev.account_id}@${google_service_account.terraform-carbon-dbms-predev.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-carbon-dbms-stage
##############################################################
resource "google_service_account" "terraform-carbon-dbms-stage" {
  project      = "gcp-ushi-carbon-dbms-stage"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-dbms-stage_policy" {
  depends_on = ["google_service_account.terraform-carbon-dbms-stage"]
  project    = "${google_service_account.terraform-carbon-dbms-stage.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-dbms-stage.account_id}@${google_service_account.terraform-carbon-dbms-stage.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-search-platform-npe
##############################################################
resource "google_service_account" "terraform-carbon-search-npe" {
  project      = "gcp-ushi-search-platform-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-search-npe_policy" {
  depends_on = ["google_service_account.terraform-carbon-search-npe"]
  project    = "${google_service_account.terraform-carbon-search-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-search-npe.account_id}@${google_service_account.terraform-carbon-search-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# Dataproc management service account for gcp-ushi-search-platform-npe
##############################################################
resource "google_service_account" "dataproc-carbon-search-npe" {
  project      = "gcp-ushi-search-platform-npe"
  account_id   = "sa-dataproc"
  display_name = "sa-dataproc"
}

resource "google_project_iam_member" "dataproc-carbon-search-npe_policy" {
  depends_on = ["google_service_account.dataproc-carbon-search-npe"]
  project    = "${google_service_account.dataproc-carbon-search-npe.project}"
  count      = "${length(var.search_sa_dataproc_role_binding)}"
  role       = "${element(var.search_sa_dataproc_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.dataproc-carbon-search-npe.account_id}@${google_service_account.dataproc-carbon-search-npe.project}.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "dataproc-carbon-search-npe_network_policy" {
  depends_on = ["google_service_account.dataproc-carbon-search-npe"]
  project    = "gcp-ushi-digital-network-npe"
  count      = "${length(var.search_sa_dataproc_network_role_binding)}"
  role       = "${element(var.search_sa_dataproc_network_role_binding, count.index)}"
  member     = "serviceAccount:service-13215431082@dataproc-accounts.iam.gserviceaccount.com"
}

##############################################################
# SSH user service account for gcp-ushi-search-platform-npe
##############################################################
resource "google_service_account" "terraform-carbon-search-npe-ssh" {
  project      = "gcp-ushi-search-platform-npe"
  account_id   = "compute-ssh"
  display_name = "compute-ssh"
}

resource "google_project_iam_member" "terraform-carbon-search-npe-ssh_policy" {
  depends_on = ["google_service_account.terraform-carbon-search-npe-ssh"]
  project    = "${google_service_account.terraform-carbon-search-npe-ssh.project}"
  role       = "roles/viewer"
  member     = "serviceAccount:${google_service_account.terraform-carbon-search-npe-ssh.account_id}@${google_service_account.terraform-carbon-search-npe-ssh.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-search-platform-prd
##############################################################
resource "google_service_account" "terraform-carbon-search-prd" {
  project      = "gcp-ushi-search-platform-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-search-prd_policy" {
  depends_on = ["google_service_account.terraform-carbon-search-prd"]
  project    = "${google_service_account.terraform-carbon-search-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-search-prd.account_id}@${google_service_account.terraform-carbon-search-prd.project}.iam.gserviceaccount.com"
}

##############################################################
# SSH user service account for gcp-ushi-search-platform-npe
##############################################################
resource "google_service_account" "terraform-carbon-search-prd-ssh" {
  project      = "gcp-ushi-search-platform-prd"
  account_id   = "compute-ssh"
  display_name = "compute-ssh"
}

resource "google_project_iam_member" "terraform-carbon-search-prd-ssh_policy" {
  depends_on = ["google_service_account.terraform-carbon-search-prd-ssh"]
  project    = "${google_service_account.terraform-carbon-search-prd-ssh.project}"
  role       = "roles/viewer"
  member     = "serviceAccount:${google_service_account.terraform-carbon-search-prd-ssh.account_id}@${google_service_account.terraform-carbon-search-prd-ssh.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-carbon-svcs-prd
##############################################################
resource "google_service_account" "terraform-carbon-svcs-prd" {
  project      = "gcp-ushi-carbon-svcs-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-carbon-svcs-prd_policy" {
  depends_on = ["google_service_account.terraform-carbon-svcs-prd"]
  project    = "${google_service_account.terraform-carbon-svcs-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-carbon-svcs-prd.account_id}@${google_service_account.terraform-carbon-svcs-prd.project}.iam.gserviceaccount.com"
}

################################################################
# Monitoring agent service account for gcp-ushi-carbon-svcs-prd
################################################################
resource "google_service_account" "monitoring-carbon-svcs-prd" {
  project      = "gcp-ushi-carbon-svcs-prd"
  account_id   = "monitoring-agent"
  display_name = "monitoring-agent"
}

resource "google_project_iam_member" "monitoring-carbon-svcs-prd_policy" {
  depends_on = ["google_service_account.monitoring-carbon-svcs-prd"]
  project    = "${google_service_account.monitoring-carbon-svcs-prd.project}"
  count      = "${length(var.monitoring_sa_role_binding)}"
  role       = "${element(var.monitoring_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.monitoring-carbon-svcs-prd.account_id}@${google_service_account.monitoring-carbon-svcs-prd.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-daci-npe
##############################################################
resource "google_service_account" "terraform-ushi-daci-npe" {
  project      = "gcp-ushi-daci-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-npe"]
  project    = "${google_service_account.terraform-ushi-daci-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-npe.account_id}@${google_service_account.terraform-ushi-daci-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-shared-security-npe
##############################################################
resource "google_service_account" "terraform-dlp-npe" {
  project      = "gcp-ushi-shared-security-npe"
  account_id   = "terraform-dlp-npe"
  display_name = "terraform-dlp-npe"
}

resource "google_project_iam_member" "terraform-dlp-npe_policy" {
  depends_on = ["google_service_account.terraform-dlp-npe"]
  project    = "${google_service_account.terraform-dlp-npe.project}"
  count      = "${length(var.iam_dlp_role_binding)}"
  role       = "${element(var.iam_dlp_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-dlp-npe.account_id}@${google_service_account.terraform-dlp-npe.project}.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "terraform-dlp-carbon-dev_policy" {
  depends_on = ["google_service_account.terraform-dlp-npe"]
  project    = "${google_service_account.terraform-carbon-svcs-dev.project}"
  role       = "roles/viewer"
  member     = "serviceAccount:${google_service_account.terraform-dlp-npe.account_id}@${google_service_account.terraform-dlp-npe.project}.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "terraform-dlp-carbon-stage_policy" {
  depends_on = ["google_service_account.terraform-dlp-npe"]
  project    = "${google_service_account.terraform-carbon-svcs-stage.project}"
  role       = "roles/viewer"
  member     = "serviceAccount:${google_service_account.terraform-dlp-npe.account_id}@${google_service_account.terraform-dlp-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for gcp-ushi-shared-security-prd
##############################################################
resource "google_service_account" "terraform-dlp-prd" {
  project      = "gcp-ushi-shared-security-prd"
  account_id   = "terraform-dlp-prd"
  display_name = "terraform-dlp-prd"
}

resource "google_project_iam_member" "terraform-dlp-prd_policy" {
  depends_on = ["google_service_account.terraform-dlp-prd"]
  project    = "${google_service_account.terraform-dlp-prd.project}"
  count      = "${length(var.iam_dlp_role_binding)}"
  role       = "${element(var.iam_dlp_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-dlp-prd.account_id}@${google_service_account.terraform-dlp-prd.project}.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "terraform-dlp-carbon-prd_policy" {
  depends_on = ["google_service_account.terraform-dlp-prd"]
  project    = "${google_service_account.terraform-carbon-svcs-prd.project}"
  role       = "roles/viewer"
  member     = "serviceAccount:${google_service_account.terraform-dlp-prd.account_id}@${google_service_account.terraform-dlp-prd.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM management service account for CVE
##############################################################
resource "google_service_account" "terraform-cve-prd" {
  project      = "gcp-ushi-carbon-svcs-prd"
  account_id   = "terraform-cve-prd"
  display_name = "terraform-cve-prd"
}

resource "google_project_iam_member" "terraform-cve-prd_policy" {
  depends_on = ["google_service_account.terraform-cve-prd"]
  project    = "${google_service_account.terraform-cve-prd.project}"
  count      = "${length(var.iam_cve_role_binding)}"
  role       = "${element(var.iam_cve_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-cve-prd.account_id}@${google_service_account.terraform-cve-prd.project}.iam.gserviceaccount.com"
}

#########################################################################################
# IAM management service account for gcp-ushi-identity-npe (Identity Project for npe)
#########################################################################################
resource "google_service_account" "terraform-ushi-identity-npe" {
  project      = "gcp-ushi-identity-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-identity-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-identity-npe"]
  project    = "${google_service_account.terraform-ushi-identity-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-identity-npe.account_id}@${google_service_account.terraform-ushi-identity-npe.project}.iam.gserviceaccount.com"
}

#########################################################################################
# IAM management service account for gcp-ushi-carbon-predevops-npe (pre-dev project)
#########################################################################################
resource "google_service_account" "terraform-ushi-carbon-predevops-npe" {
  project      = "gcp-ushi-carbon-predevops-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-carbon-predevops_policy" {
  depends_on = ["google_service_account.terraform-ushi-carbon-predevops-npe"]
  project    = "${google_service_account.terraform-ushi-carbon-predevops-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-carbon-predevops-npe.account_id}@${google_service_account.terraform-ushi-carbon-predevops-npe.project}.iam.gserviceaccount.com"
}

#########################################################################################
# IAM management service account for gcp-ushi-carbon-predevsvcs-npe (pre-dev project)
#########################################################################################
resource "google_service_account" "terraform-ushi-carbon-predevsvcs-npe" {
  project      = "gcp-ushi-carbon-predevsvcs-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-carbon-predevsvcs_policy" {
  depends_on = ["google_service_account.terraform-ushi-carbon-predevsvcs-npe"]
  project    = "${google_service_account.terraform-ushi-carbon-predevsvcs-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-carbon-predevsvcs-npe.account_id}@${google_service_account.terraform-ushi-carbon-predevsvcs-npe.project}.iam.gserviceaccount.com"
}

#########################################################################################
# IAM management service account for gcp-ushi-assetmgmt-npe (asset management Project for npe)
#########################################################################################
resource "google_service_account" "terraform-ushi-assetmgmt-npe" {
  project      = "gcp-ushi-assetmgmt-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-assetmgmt-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-assetmgmt-npe"]
  project    = "${google_service_account.terraform-ushi-assetmgmt-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-assetmgmt-npe.account_id}@${google_service_account.terraform-ushi-identity-npe.project}.iam.gserviceaccount.com"
}

#############################################################################################################################
# IAM management service account for gcp-ushi-personalization-npe (Infrastructure Personalization Project for npe)
#############################################################################################################################
resource "google_service_account" "terraform-ushi-infra-personalization-npe" {
  project      = "gcp-ushi-personalization-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-infra-personalization-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-infra-personalization-npe"]
  project    = "${google_service_account.terraform-ushi-infra-personalization-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-infra-personalization-npe.account_id}@${google_service_account.terraform-ushi-identity-npe.project}.iam.gserviceaccount.com"
}

##############################################################
# Compute Engine Image service account for gcp-ushi-carbon-devops-npe
##############################################################
resource "google_service_account" "sa-osimage-carbon-devops-npe" {
  project      = "gcp-ushi-carbon-devops-npe"
  account_id   = "sa-osimage"
  display_name = "sa-osimage"
}

resource "google_project_iam_member" "sa-osimage_policy" {
  depends_on = ["google_service_account.sa-osimage-carbon-devops-npe"]
  project    = "${element(var.sa-osimage_policy_project_binding, count.index)}"
  count      = "${length(var.sa-osimage_policy_project_binding)}"
  role       = "organizations/${var.organization_id}/roles/carbon.computeimageadmin"
  member     = "serviceAccount:${google_service_account.sa-osimage-carbon-devops-npe.account_id}@${google_service_account.sa-osimage-carbon-devops-npe.project}.iam.gserviceaccount.com"
}

#########################################################################################
# SSH USER ROLE FOR GLOBAL USAGE
#########################################################################################
resource "google_organization_iam_custom_role" "ssh-user" {
  role_id     = "carbon.sshuser"
  org_id      = "${var.organization_id}"
  title       = "Carbon SSH User"
  description = "User with capability to SSH into VMs as needed."
  permissions = ["compute.instances.setMetadata", "compute.projects.setCommonInstanceMetadata", "iam.serviceAccounts.actAs"]
}

###################################################
# IAM Management service accounts for gcp-ushi-apigee-npe
###################################################
resource "google_service_account" "terraform-ushi-apigee-npe" {
  project      = "gcp-ushi-apigee-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-apigee-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-apigee-npe"]
  project    = "${google_service_account.terraform-ushi-apigee-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-apigee-npe.account_id}@${google_service_account.terraform-ushi-apigee-npe.project}.iam.gserviceaccount.com"
}
#######

###################################################
# IAM Management service accounts for gcp-ushi-daci-ingestion-npe
###################################################
resource "google_service_account" "terraform-ushi-daci-ingestion-npe" {
  project      = "gcp-ushi-daci-ingestion-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-ingestion-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-ingestion-npe"]
  project    = "${google_service_account.terraform-ushi-daci-ingestion-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-ingestion-npe.account_id}@${google_service_account.terraform-ushi-daci-ingestion-npe.project}.iam.gserviceaccount.com"
}

###################################################
# IAM Management service accounts for gcp-ushi-dataengg-npe
###################################################
resource "google_service_account" "terraform-ushi-dataengg-npe" {
  project      = "gcp-ushi-dataengg-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-dataengg-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-dataengg-npe"]
  project    = "${google_service_account.terraform-ushi-dataengg-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-dataengg-npe.account_id}@${google_service_account.terraform-ushi-dataengg-npe.project}.iam.gserviceaccount.com"
}


###################################################
# IAM Management service accounts for gcp-ushi-daci-transform-npe
###################################################
resource "google_service_account" "terraform-ushi-daci-transform-npe" {
  project      = "gcp-ushi-daci-transform-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-transform-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-transform-npe"]
  project    = "${google_service_account.terraform-ushi-daci-transform-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-transform-npe.account_id}@${google_service_account.terraform-ushi-daci-transform-npe.project}.iam.gserviceaccount.com"
}

###################################################
# IAM Management service accounts for gcp-ushi-daci-serve-npe
###################################################
resource "google_service_account" "terraform-ushi-daci-serve-npe" {
  project      = "gcp-ushi-daci-serve-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-serve-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-serve-npe"]
  project    = "${google_service_account.terraform-ushi-daci-serve-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-serve-npe.account_id}@${google_service_account.terraform-ushi-daci-serve-npe.project}.iam.gserviceaccount.com"
}

###################################################
# IAM Management service accounts for gcp-ushi-telemetry-npe
###################################################
resource "google_service_account" "terraform-ushi-telemetry-npe" {
  project      = "gcp-ushi-telemetry-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-telemetry-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-telemetry-npe"]
  project    = "${google_service_account.terraform-ushi-telemetry-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-telemetry-npe.account_id}@${google_service_account.terraform-ushi-telemetry-npe.project}.iam.gserviceaccount.com"
}

###################################################
# IAM Management service accounts for gcp-ushi-telemetry-prd
###################################################
resource "google_service_account" "terraform-ushi-telemetry-prd" {
  project      = "gcp-ushi-telemetry-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-telemetry-prd_policy" {
  depends_on = ["google_service_account.terraform-ushi-telemetry-prd"]
  project    = "${google_service_account.terraform-ushi-telemetry-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-telemetry-prd.account_id}@${google_service_account.terraform-ushi-telemetry-prd.project}.iam.gserviceaccount.com"
}

##############################################################
# IAM Management service accounts for lws-cloud-governance-sandbox
#############################################################
resource "google_service_account" "terraform-lws-cloud-governance-sandbox" {
  project      = "lws-cloud-governance-sandbox"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-lws-cloud-governance-sandbox_policy" {
  depends_on = ["google_service_account.terraform-lws-cloud-governance-sandbox"]
  project    = "${google_service_account.terraform-lws-cloud-governance-sandbox.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-lws-cloud-governance-sandbox.account_id}@${google_service_account.terraform-lws-cloud-governance-sandbox.project}.iam.gserviceaccount.com"
}


#########################################################################################
# IAM management service account for gcp-ushi-assetmgmt-prd (asset management Project for prd)
#########################################################################################
resource "google_service_account" "terraform-ushi-assetmgmt-prd" {
  project      = "gcp-ushi-assetmgmt-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-assetmgmt-prd_policy" {
  depends_on = ["google_service_account.terraform-ushi-assetmgmt-prd"]
  project    = "${google_service_account.terraform-ushi-assetmgmt-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-assetmgmt-prd.account_id}@${google_service_account.terraform-ushi-assetmgmt-prd.project}.iam.gserviceaccount.com"
}

#########################################################################################
# IAM management service account for gcp-ushi-dataint-npe 
#########################################################################################
resource "google_service_account" "terraform-ushi-dataint-npe" {
  project      = "gcp-ushi-dataint-npe"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-dataint-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-dataint-npe"]
  project    = "${google_service_account.terraform-ushi-dataint-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-dataint-npe.account_id}@${google_service_account.terraform-ushi-dataint-npe.project}.iam.gserviceaccount.com"
}

#########################################################################################
# IAM management service account for gcp-ushi-ds-npe 
#########################################################################################
resource "google_service_account" "terraform-ushi-digital-ds-npe-1" {
  project      = "gcp-ushi-digital-ds-npe-1"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-digital-ds-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-digital-ds-npe-1"]
  project    = "${google_service_account.terraform-ushi-digital-ds-npe-1.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-digital-ds-npe-1.account_id}@${google_service_account.terraform-ushi-digital-ds-npe-1.project}.iam.gserviceaccount.com"
}

#########################################################################################
# COMPUTE IMAGE ADMIN USER ROLE FOR GLOBAL USAGE
#########################################################################################
resource "google_organization_iam_custom_role" "compute-image-admin" {
  role_id     = "carbon.computeimageadmin"
  org_id      = "${var.organization_id}"
  title       = "Carbon Compute Image Admin"
  description = "User with capability to add and remove Compute Engine Images"
  permissions = [
    "compute.images.create", 
    "compute.images.delete", 
    "compute.images.get",
    "compute.images.setLabels",
    "compute.images.useReadOnly",
    "compute.globalOperations.get"
  ]
}

#########################################################################################
# IAM management service account for gcp-ushi-compute-services-dev/stage/prod
#########################################################################################
resource "google_service_account" "terraform-ushi-compute-service-dev" {
  project      = "gcp-ushi-compute-svc-dev"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-compute-service-dev_policy" {
  depends_on = ["google_service_account.terraform-ushi-compute-service-dev"]
  project    = "${google_service_account.terraform-ushi-compute-service-dev.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-compute-service-dev.account_id}@${google_service_account.terraform-ushi-compute-service-dev.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-compute-service-stage" {
  project      = "gcp-ushi-compute-svc-stage"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-compute-service-stage_policy" {
  depends_on = ["google_service_account.terraform-ushi-compute-service-stage"]
  project    = "${google_service_account.terraform-ushi-compute-service-stage.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-compute-service-stage.account_id}@${google_service_account.terraform-ushi-compute-service-stage.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-compute-service-prd" {
  project      = "gcp-ushi-compute-svc-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-compute-service-prd_policy" {
  depends_on = ["google_service_account.terraform-ushi-compute-service-prd"]
  project    = "${google_service_account.terraform-ushi-compute-service-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-compute-service-prd.account_id}@${google_service_account.terraform-ushi-compute-service-prd.project}.iam.gserviceaccount.com"
}
#########################################################################################
# IAM management service account for gcp-ushi-identity-prd (Identity Project for prd)
#########################################################################################
resource "google_service_account" "terraform-ushi-identity-prd" {
  project      = "gcp-ushi-identity-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-identity-prd_policy" {
  depends_on = ["google_service_account.terraform-ushi-identity-prd"]
  project    = "${google_service_account.terraform-ushi-identity-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-identity-prd.account_id}@${google_service_account.terraform-ushi-identity-prd.project}.iam.gserviceaccount.com"
}

#########################################################################################
# IAM management service account for gcp-ushi-daci-ds-npe (daci ds project for npe)
#########################################################################################
resource "google_service_account" "terraform-ushi-daci-ds-npe" {
  project      = "gcp-ushi-daci-ds-npe-7489"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-ds-npe_policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-ds-npe"]
  project    = "${google_service_account.terraform-ushi-daci-ds-npe.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-ds-npe.account_id}@${google_service_account.terraform-ushi-daci-ds-npe.project}.iam.gserviceaccount.com"
}


#############################################################################################################################
# IAM management service account for gcp-ushi-daci-*-qa (For all projects under non-digital->datascience->qa-datascience)
##############################################################################################################################

resource "google_service_account" "terraform-ushi-daci-analyze-qa" {
  project      = "gcp-ushi-daci-analyze-qa"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-analyze-qa-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-analyze-qa"]
  project    = "${google_service_account.terraform-ushi-daci-analyze-qa.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-analyze-qa.account_id}@${google_service_account.terraform-ushi-daci-analyze-qa.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-daci-ingest-qa" {
  project      = "gcp-ushi-daci-ingest-qa"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-ingest-qa-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-ingest-qa"]
  project    = "${google_service_account.terraform-ushi-daci-ingest-qa.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-ingest-qa.account_id}@${google_service_account.terraform-ushi-daci-ingest-qa.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-daci-process-qa" {
  project      = "gcp-ushi-daci-process-qa"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-process-qa-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-process-qa"]
  project    = "${google_service_account.terraform-ushi-daci-process-qa.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-process-qa.account_id}@${google_service_account.terraform-ushi-daci-process-qa.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-daci-digital-qa" {
  project      = "gcp-ushi-digital-ds-qa"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-digital-qa-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-digital-qa"]
  project    = "${google_service_account.terraform-ushi-daci-digital-qa.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-digital-qa.account_id}@${google_service_account.terraform-ushi-daci-digital-qa.project}.iam.gserviceaccount.com"
}



#############################################################################################################################
# IAM management service account for gcp-ushi-daci-*-qa (For all projects under non-digital->datascience->prod-datascience)
##############################################################################################################################

resource "google_service_account" "terraform-ushi-daci-analyze-prd" {
  project      = "gcp-ushi-daci-analyze-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-analyze-prd-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-analyze-prd"]
  project    = "${google_service_account.terraform-ushi-daci-analyze-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-analyze-prd.account_id}@${google_service_account.terraform-ushi-daci-analyze-prd.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-daci-ingest-prd" {
  project      = "gcp-ushi-daci-ingest-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-ingest-prd-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-ingest-prd"]
  project    = "${google_service_account.terraform-ushi-daci-ingest-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-ingest-prd.account_id}@${google_service_account.terraform-ushi-daci-ingest-prd.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-daci-process-prd" {
  project      = "gcp-ushi-daci-process-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-process-prd-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-process-prd"]
  project    = "${google_service_account.terraform-ushi-daci-process-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-process-prd.account_id}@${google_service_account.terraform-ushi-daci-process-prd.project}.iam.gserviceaccount.com"
}

resource "google_service_account" "terraform-ushi-daci-digital-prd" {
  project      = "gcp-ushi-digital-ds-prd"
  account_id   = "terraform-iam"
  display_name = "terraform-iam"
}

resource "google_project_iam_member" "terraform-ushi-daci-digital-prd-policy" {
  depends_on = ["google_service_account.terraform-ushi-daci-digital-prd"]
  project    = "${google_service_account.terraform-ushi-daci-digital-prd.project}"
  count      = "${length(var.iam_sa_role_binding)}"
  role       = "${element(var.iam_sa_role_binding, count.index)}"
  member     = "serviceAccount:${google_service_account.terraform-ushi-daci-digital-prd.account_id}@${google_service_account.terraform-ushi-daci-digital-prd.project}.iam.gserviceaccount.com"
}