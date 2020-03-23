resource "google_folder" "nondigital_folder" {
  display_name = "${var.nondigital_folder_name}"
  parent       = "organizations/579210930343"
}

resource "google_folder" "datascience_folder" {
  display_name = "${var.datascience_folder_name}"
  parent       = "folders/${var.nondigital_folder_id}"
}

resource "google_folder" "network_folder" {
  display_name = "${var.network_folder_name}"
  parent       = "folders/${var.digital_folder_id}"
}

resource "google_folder" "integrations_folder" {
  display_name = "${var.integrations_folder_name}"
  parent       = "folders/${var.digital_folder_id}"
}

resource "google_folder" "integrations_npe_folder" {
  display_name = "${var.integrations_npe_folder_name}"   # "npe-integrations"
  parent       = "folders/${var.integrations_folder_id}"
}

resource "google_folder" "integrations_prd_folder" {
  display_name = "${var.integrations_prd_folder_name}"   # "prd-integrations"
  parent       = "folders/${var.integrations_folder_id}"
}

resource "google_folder" "cloudgoverance_folder" {
  display_name = "${var.cloudgovernance_folder_name}"  # cloud-governance
  parent       = "folders/${var.nondigital_folder_id}"
}


resource "google_folder" "infra_folder" {
  display_name = "${var.infra_folder_name}"
  parent       = "folders/${var.digital_folder_id}"
}

resource "google_folder" "infra_npe_folder" {
  display_name = "${var.infra_npe_folder_name}"
  parent       = "folders/${var.infra_folder_id}"
}

resource "google_folder" "infra_prod_folder" {
  display_name = "${var.infra_prod_folder_name}"
  parent       = "folders/${var.infra_folder_id}"
}

resource "google_folder" "digital_datascience_folder" {
  display_name = "${var.digital_datascience_folder_name}"
  parent       = "folders/${var.digital_folder_id}"
}

resource "google_folder" "digital_datascience_npe_folder" {
  display_name = "${var.digital_datascience_npe_folder_name}"
  parent       = "folders/${var.digital_datascience_folder_id}"
}

resource "google_folder" "digital_datascience_prod_folder" {
  display_name = "${var.digital_datascience_prod_folder_name}"
  parent       = "folders/${var.digital_datascience_folder_id}"
}


resource "google_folder" "non_digital_datascience_qa_folder" {
  display_name = "${var.non_digital_datascience_qa_folder_name}"
  parent       = "folders/${var.non_digital_datascience_folder_id}"
}

resource "google_folder" "non_digital_datascience_prod_folder" {
  display_name = "${var.non_digital_datascience_prod_folder_name}"
  parent       = "folders/${var.non_digital_datascience_folder_id}"
}
