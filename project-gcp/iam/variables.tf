variable "organization_id" {}

variable "iam_sa_role_binding" {
  type        = "list"
  description = "List of required roles for IAM administation service accounts"
}

variable "monitoring_sa_role_binding" {
  type        = "list"
  description = "List of required roles for monitoring agent service account"
}

variable "iam_dlp_role_binding" {
   type        = "list"
   description = "List of required roles for DLP administation service accounts"
}

variable "iam_cve_role_binding" {
   type        = "list"
   description = "List of required roles for CVE scans and subscriptions"
}

variable "search_sa_dataproc_role_binding" {
   type        = "list"
   description = "List of required roles for Search Dataproc management"
}

variable "search_sa_dataproc_network_role_binding" {
   type        = "list"
   description = "List of required roles for Search Dataproc management from networking"
}

variable "sa-osimage_policy_project_binding" {
   type        = "list"
   description = "List of projects to add service account for base image management"
}