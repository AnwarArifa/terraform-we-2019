
############### parent-nondigital folder ###############
output "nondigital_folder_id" {
  value = "${google_folder.nondigital_folder.id}"
}

output "expected_nondigital_folder_name" {
  value = "${var.nondigital_folder_name}"
}

output "actual_nondigital_folder_name" {
  value = "${google_folder.nondigital_folder.display_name}"

}



############### datascience folder ###############
output "datascience_folder_id" {
  value = "${google_folder.datascience_folder.name}"
}

output "expected_datascience_folder_name" {
  value = "${var.datascience_folder_name}"
}

output "actual_datascience_folder_name" {
  value = "${google_folder.datascience_folder.display_name}"
}

############### digital-network folder ###############
output "network_folder_id" {
  value = "${google_folder.network_folder.name}"
}

output "expected_network_folder_name" {
  value = "${var.network_folder_name}"
}

output "actual_network_folder_name" {
  value = "${google_folder.network_folder.display_name}"
}

############### digital-Infrastructure folder ###############
output "infra_folder_id" {
  value = "${google_folder.infra_folder.name}"
}

output "expected_infra_folder_name" {
  value = "${var.infra_folder_name}"
}

output "actual_infra_folder_name" {
  value = "${google_folder.infra_folder.display_name}"
}

############### digital-Infrastructure-npe folder ###############
output "infra_npe_folder_id" {
  value = "${google_folder.infra_npe_folder.id}"
}

output "expected_infra_npe_folder_name" {
  value = "${var.infra_npe_folder_name}"
}

output "actual_infra_npe_folder_name" {
  value = "${google_folder.infra_npe_folder.display_name}"
}

############### digital-Infrastructure-prod folder ###############
output "infra_prod_folder_id" {
  value = "${google_folder.infra_prod_folder.id}"
}

output "expected_infra_prod_folder_name" {
  value = "${var.infra_prod_folder_name}"
}

output "actual_infra_prod_folder_name" {
  value = "${google_folder.infra_prod_folder.display_name}"
}

############### digital-integrations folder ###############
output "integrations_folder_id" {
  value = "${google_folder.integrations_folder.id}"
}

output "expected_integrations_folder_name" {
  value = "${var.integrations_folder_name}"
}

output "actual_integrations_folder_name" {
  value = "${google_folder.integrations_folder.display_name}"
}

############### digital-integrations-npe folder ###############
output "integrations_npe_folder_id" {
  value = "${google_folder.integrations_npe_folder.id}"
}

output "expected_integrations_npe_folder_name" {
  value = "${var.integrations_npe_folder_name}"
}

output "actual_integrations_npe_folder_name" {
  value = "${google_folder.integrations_npe_folder.display_name}"
}

############### digital-integrations-prd folder ###############
output "integrations_prd_folder_id" {
  value = "${google_folder.integrations_prd_folder.id}"
}

output "expected_integrations_prd_folder_name" {
  value = "${var.integrations_prd_folder_name}"
}

output "actual_integrations_prd_folder_name" {
  value = "${google_folder.integrations_prd_folder.display_name}"
}


############# cloud-goverance folder  ##############
output "cloudgovernance_folder_id" {
  value = "${google_folder.cloudgoverance_folder.id}"
}
output "expected_cloudgovernance_folder_name" {
  value = "${var.cloudgovernance_folder_name}"
}

output "actual_cloudgovernance_folder_name" {
  value = "${google_folder.cloudgoverance_folder.display_name}"
}

############### digital datascience folder ###############
output "digital_datascience_folder_id" {
  value = "${google_folder.digital_datascience_folder.name}"
}

output "expected_digital_datascience_folder_name" {
  value = "${var.digital_datascience_folder_name}"
}

output "actual_digital_datascience_folder_name" {
  value = "${google_folder.digital_datascience_folder.display_name}"
}

############### digital datascience npe folder ###############
output "digital_datascience_npe_folder_id" {
  value = "${google_folder.digital_datascience_npe_folder.id}"
}

output "expected_digital_datascience_npe_folder_name" {
  value = "${var.digital_datascience_npe_folder_name}"
}

output "actual_digital_datascience_npe_folder_name" {
  value = "${google_folder.digital_datascience_npe_folder.display_name}"
}

############### digital datascience prod folder ###############
output "digital_datascience_prod_folder_id" {
  value = "${google_folder.digital_datascience_prod_folder.id}"
}

output "expected_digital_datascience_prod_folder_name" {
  value = "${var.digital_datascience_prod_folder_name}"
}

output "actual_digital_datascience_prod_folder_name" {
  value = "${google_folder.digital_datascience_prod_folder.display_name}"
}


############### datascience qa folder under non-digital folder ###############

output "non_digital_datascience_qa_folder_id" {
  value = "${google_folder.non_digital_datascience_qa_folder.id}"
}

output "expected_non_digital_datascience_qa_folder_name" {
  value ="${var.non_digital_datascience_qa_folder_name}"
}
output "actual_non_digital_datascience_qa_folder_name" {
  value = "${google_folder.non_digital_datascience_qa_folder.display_name}"
}

############### datascience prod folder under non-digital folder ###############

output "non_digital_datascience_prod_folder_id" {
  value = "${google_folder.non_digital_datascience_prod_folder.id}"
}

output "expected_non_digital_datascience_prod_folder_name" {
  value = "${var.non_digital_datascience_prod_folder_name}"
}

output "actual_non_digital_datascience_prod_folder_name" {
  value ="${google_folder.non_digital_datascience_prod_folder.display_name}"
}