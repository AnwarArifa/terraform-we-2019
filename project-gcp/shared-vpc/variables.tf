variable "host_npe_project_id" {
  description = "NPE host project's project id"
}

variable "region_east4" {}


variable "gcp-regions" {
    type = "list"
}


variable "gcp-subnets" {
    type = "list"
}

variable "gcp_subnets_predev_svcs" {
  
  type = "list"
}


variable "host_prd_project_id" {
  description = "PRD host project's project id"
}

variable "gcp-subnets-telemetry-prd" {
  type ="list"
}


variable "region_central1" {
}

variable "gcp_subnets_dev_svcs" {
  type ="list"
}

variable "gcp_subnets_stage_svcs" {
  type ="list"
}

variable "digital_datascience_npe_subnets" {
  type ="list"
}
variable "daci_ds_npe_project_id" {
	description = "Project id for daci ds npe projet"
}

