//IAM outputs

output "terraform-iam-ops-npe_account-id" {
  value = "${google_service_account.terraform-iam-ops-npe.account_id}"
}

output "terraform-iam-ops-prd_account-id" {
  value = "${google_service_account.terraform-iam-ops-prd.account_id}"
}

output "terraform-iam-inv-npe_account-id" {
  value = "${google_service_account.terraform-iam-inventory-npe.account_id}"
}

//network npe
output "terraform-iam-network-npe_account-id" {
  value = "${google_service_account.terraform-iam-network-npe.account_id}"
}

//network prd
output "terraform-iam-network-prd_account-id" {
  value = "${google_service_account.terraform-iam-network-prd.account_id}"
}

//carbon sandbox
output "terraform-iam-carbon-sandbox-npe_account-id" {
  value = "${google_service_account.terraform-carbon-sandbox-npe.account_id}"
}

//carbon devops
output "terraform-iam-carbon-devops-npe_account-id" {
  value = "${google_service_account.terraform-carbon-devops-npe.account_id}"
}

//carbon svcs-dev
output "terraform-iam-carbon-svcs-dev_account-id" {
  value = "${google_service_account.terraform-carbon-svcs-dev.account_id}"
}

//carbon svcs-dev
output "monitoring-carbon-svcs-dev_account-id" {
  value = "${google_service_account.monitoring-carbon-svcs-dev.account_id}"
}

//carbon svcs-dev
output "gcr-carbon-svcs-dev_account-id" {
  value = "${google_service_account.gcr-carbon-svcs-dev.account_id}"
}

//carbon svcs-stage
output "terraform-iam-carbon-svcs-stage_account-id" {
  value = "${google_service_account.terraform-carbon-svcs-stage.account_id}"
}

//carbon svcs-stage
output "monitoring-carbon-svcs-stg_account-id" {
  value = "${google_service_account.monitoring-carbon-svcs-stg.account_id}"
}

//carbon svcs-prd
output "terraform-iam-carbon-svcs-prd_account-id" {
  value = "${google_service_account.terraform-carbon-svcs-prd.account_id}"
}

//carbon svcs-prd
output "monitoring-carbon-svcs-prd_account-id" {
  value = "${google_service_account.monitoring-carbon-svcs-prd.account_id}"
}

//carbon dbms-dev
output "terraform-iam-carbon-dbms-dev_account-id" {
  value = "${google_service_account.terraform-carbon-dbms-dev.account_id}"
}

//carbon dbms-predev
output "terraform-iam-carbon-dbms-predev_account-id" {
  value = "${google_service_account.terraform-carbon-dbms-predev.account_id}"
}

//carbon dbms-stage
output "terraform-iam-carbon-dbms-stage_account-id" {
  value = "${google_service_account.terraform-carbon-dbms-stage.account_id}"
}

// search npe iam
output "terraform-iam-terraform-carbon-search-npe_account-id" {
  value = "${google_service_account.terraform-carbon-search-npe.account_id}"
}

// search npe ssh
output "terraform-carbon-search-npe-ssh_account-id" {
  value = "${google_service_account.terraform-carbon-search-npe-ssh.account_id}"
}

// search prd iam
output "terraform-iam-terraform-carbon-search-prd_account-id" {
  value = "${google_service_account.terraform-carbon-search-prd.account_id}"
}

// search prd ssh
output "terraform-carbon-search-prd-ssh_account-id" {
  value = "${google_service_account.terraform-carbon-search-prd-ssh.account_id}"
}

// ushi daci npe
output "terraform-ushi-daci-npe_account-id" {
  value = "${google_service_account.terraform-carbon-search-prd-ssh.account_id}"
}

// dlp npe
output "terraform-dlp-npe_account-id" {
  value = "${google_service_account.terraform-dlp-npe.account_id}"
}

// dlp prd
output "terraform-dlp-prd_account-id" {
  value = "${google_service_account.terraform-dlp-prd.account_id}"
}

// cve prd
output "terraform-cve-prd_account-id" {
  value = "${google_service_account.terraform-cve-prd.account_id}"
}
// ushi identity npe
output "terraform-ushi-identity-npe_account-id" {
  value = "${google_service_account.terraform-ushi-identity-npe.account_id}"
}

// ushi identity prd
output "terraform-ushi-identity-prd_account-id" {
  value = "${google_service_account.terraform-ushi-identity-prd.account_id}"
}

// ushi predevops npe
output "terraform-predevops-npe_account-id" {
  value = "${google_service_account.terraform-ushi-carbon-predevops-npe.account_id}"
}

// ushi predevsvcs npe
output "terraform-predevsvcs-npe_account-id" {
  value = "${google_service_account.terraform-ushi-carbon-predevsvcs-npe.account_id}"
}

// ushi assetmgmt npe
output "terraform-ushi-assetmgmt-npe_account-id" {
  value = "${google_service_account.terraform-ushi-assetmgmt-npe.account_id}"
}

// ushi infrastructure npe
output "terraform-ushi-infra-personalization-npe_account-id" {
  value = "${google_service_account.terraform-ushi-infra-personalization-npe.account_id}"
}

// apigee npe poc
output "terraform-ushi-apigee-npe" {
  value = "${google_service_account.terraform-ushi-apigee-npe.account_id}"
}


// nondigital datascience  npe poc
output "terraform-ushi-daci-ingestion-npe" {
  value = "${google_service_account.terraform-ushi-daci-ingestion-npe.account_id}"
}

// dataengg npe poc
output "terraform-ushi-dataengg-npe" {
  value = "${google_service_account.terraform-ushi-dataengg-npe.account_id}"
}

// daci transform npe
output "terraform-ushi-daci-transform-npe" {
  value = "${google_service_account.terraform-ushi-daci-transform-npe.account_id}"
}

// daci serve npe
output "terraform-ushi-daci-serve-npe" {
  value = "${google_service_account.terraform-ushi-daci-serve-npe.account_id}"
}

// telemetry transform npe
output "terraform-ushi-telemetry-npe" {
  value = "${google_service_account.terraform-ushi-telemetry-npe.account_id}"
}

// telemetry transform prd
output "terraform-ushi-telemetry-prd" {
  value = "${google_service_account.terraform-ushi-telemetry-prd.account_id}"
}

// Cloud Governance sandbox
output "terraform-lws-cloud-governance-sandbox" {
  value = "${google_service_account.terraform-lws-cloud-governance-sandbox.account_id}"
}

// ushi assetmgmt prd
output "terraform-ushi-assetmgmt-prd_account-id" {
  value = "${google_service_account.terraform-ushi-assetmgmt-prd.account_id}"
}

// ushi dataInt admin npe
output "terraform-ushi-dataint-npe" {
  value = "${google_service_account.terraform-ushi-dataint-npe.account_id}"
}

// ushi digital datascience npe
output "terraform-ushi-digital-ds-npe-1" {
  value = "${google_service_account.terraform-ushi-digital-ds-npe-1.account_id}"
}

// ushi digital computeservice npe
output "terraform-ushi-compute-service-dev" {
  value = "${google_service_account.terraform-ushi-compute-service-dev.account_id}"
}

output "terraform-ushi-compute-service-stage" {
  value = "${google_service_account.terraform-ushi-compute-service-stage.account_id}"
}

output "terraform-ushi-compute-service-prd" {
  value = "${google_service_account.terraform-ushi-compute-service-prd.account_id}"
}

// ushi daci ds  npe
output "terraform-ushi-daci-ds-npe" {
  value = "${google_service_account.terraform-ushi-daci-ds-npe.account_id}"
}


// DACI Nondigital QA projects
output "terraform-ushi-daci-analyze-qa" {
  value = "${google_service_account.terraform-ushi-daci-analyze-qa.account_id}"
}

output "terraform-ushi-daci-ingest-qa" {
  value = "${google_service_account.terraform-ushi-daci-ingest-qa.account_id}"
}

output "terraform-ushi-daci-process-qa" {
  value = "${google_service_account.terraform-ushi-daci-process-qa.account_id}"
}

output "terraform-ushi-daci-digital-qa" {
  value = "${google_service_account.terraform-ushi-daci-digital-qa.account_id}"
}

// DACI Nondigital PROD projects
output "terraform-ushi-daci-analyze-prd" {
  value = "${google_service_account.terraform-ushi-daci-analyze-prd.account_id}"
}

output "terraform-ushi-daci-ingest-prd" {
  value = "${google_service_account.terraform-ushi-daci-ingest-prd.account_id}"
}

output "terraform-ushi-daci-process-prd" {
  value = "${google_service_account.terraform-ushi-daci-process-prd.account_id}"
}

output "terraform-ushi-daci-digital-prd" {
  value = "${google_service_account.terraform-ushi-daci-digital-prd.account_id}"
}