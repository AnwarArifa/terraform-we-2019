variable "organization_id" {}

variable "billing_account" {}

variable "credentials_path" {
  description = "Path to a Service Account credentials file with permissions documented in the readme"
}

variable "shared_vpc_project_npe" {}

variable "digital_npe_folder_id" {}
variable "digital_prd_folder_id" {}
variable "digital_poc_folder_id" {}

variable "digital_network_folder_id" {}

variable "integrations_npe_folder_id" {}

variable "integrations_prd_folder_id" {}

variable "assetmgmt_npe_folder_id" {}

variable "nondigital_datascience_folder_id" {}

variable "cloudgovernance_folder_id" {}

variable "infra_npe_folder_id" {}

variable "infra_prd_folder_id" {}

variable "digital_datascience_npe_folder_id" {}

variable "digital_datascience_prod_folder_id" {}

variable "nondigital_datascience_prod_folder_id" {}

variable "nondigital_datascience_qa_folder_id" {}
