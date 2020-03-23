variable "services_project" {
  type        = "string"
  description = "Google cloud project name"
}

#################################################
#        General AD group permissions.          #
#################################################
variable "gcp_ad_digital_architect_group_name" {
  type        = "string"
  description = "Digital architect AD group name."
  default     = "gcp_ad_digital_architect"
}

variable "gcp_ad_digital_architect_role_binding" {
  type        = "list"
  description = "List of roles to assign to ops admin role."

  default = [
    "roles/viewer",
    "roles/container.viewer",
    "roles/logging.admin",
    "roles/monitoring.admin",
    "roles/compute.networkViewer",
  ]
}

variable "gcp_ad_digital_devops_group_name" {
  type        = "string"
  description = "Digital devops AD group name."
  default     = "gcp_ad_digital_platform_devops"
}

variable "gcp_ad_digital_devops_role_binding" {
  type        = "list"
  description = "List of roles to assign to ops viewer role."

  default = [
    "roles/container.developer",
    "roles/datastore.user",
    "roles/storage.admin",
    "roles/resourcemanager.projectIamAdmin",
  ]
}

variable "gcp_ad_digital_devops_lead_group_name" {
  type        = "string"
  description = "Digital devops lead AD group name."
  default     = "gcp_digital_platform_devops_lead"
}

variable "gcp_ad_digital_devops_lead_role_binding" {
  type        = "list"
  description = "List of roles to assign to ops viewer role."
  default = [
    "roles/viewer",
    "roles/iam.serviceAccountAdmin",
    "roles/logging.admin",
    "roles/monitoring.admin",
  ]
}

  variable "gcp_ad_digital_devops_lead_prj_role_binding" {
    type        = "map"
    description = "Permission for custom editor role based on svcs environment" 
    default     = {
      gcp-ushi-carbon-svcs-dev = "projects/gcp-ushi-carbon-svcs-dev/roles/carbon.editor"
      gcp-ushi-carbon-svcs-stage = "projects/gcp-ushi-carbon-svcs-stage/roles/carbon.editor"
      gcp-ushi-carbon-svcs-prd = "projects/gcp-ushi-carbon-svcs-prd/roles/carbon.editor"
    }
  }

#################################################
#    Consumer specific AD group permissions.    #
#################################################
variable "gcp_ad_digital_platform_consumer_group_names" {
  type        = "list"
  description = "List of the Google Group Accounts"

  default = [
    "gcp_ad_digital_platform_consumer_frwk",
    "gcp_ad_digital_platform_consumer_ama",
    "gcp_ad_digital_platform_consumer_catg",
    "gcp_ad_digital_platform_consumer_cma",
    "gcp_ad_digital_platform_consumer_cust",
    "gcp_ad_digital_platform_consumer_epro",
    "gcp_ad_digital_platform_consumer_prcng",
    "gcp_ad_digital_platform_consumer_price",
    "gcp_ad_digital_platform_consumer_promo",
    "gcp_ad_digital_platform_consumer_promotion",
    "gcp_ad_digital_platform_consumer_cart",
    "gcp_ad_digital_platform_consumer_idty",
    "gcp_ad_digital_platform_consumer_mktg",
    "gcp_ad_digital_platform_consumer_person",
    "gcp_ad_digital_platform_consumer_pti",
    "gcp_ad_digital_platform_consumer_sear",
    "gcp_ad_digital_platform_consumer_globalsourcing",
    "gcp_ad_digital_platform_consumer_chkout",
    "gcp_ad_digital_platform_consumer_merchandising",
    "gcp_ad_digital_platform_consumer_pricemanagement",
    "gcp_ad_digital_platform_consumer_einv",
    "gcp_ad_digital_platform_consumer_paym",
    "gcp_ad_distribution_consumer_wms",
    "gcp_ad_digital_kirkland",
    "gcp_ad_digital_platform_consumer_invanddeli",
    "gcp_ad_digital_platform_consumer_ds",
    "gcp_ad_digital_platform_consumer_assct_stores",
    "gcp_ad_digital_platform_consumer_seo",
    "gcp_ad_digital_platform_consumer_corppaym",
    "gcp_ad_digital_platform_consumer_pace",
    "gcp_ad_digital_platform_consumer_infops",
    "gcp_ad_digital_platform_web_engg",
    "gcp_ad_digital_platform_consumer_reeng",
    "gcp_ad_digital_platform_consumer_mdm_product",
    "gcp_ad_digital_platform_consumer_oms",
    "gcp_ad_digital_platform_devops_dev_npe",
    "gcp_ad_digital_platform_consumer_xp",
    "gcp_ad_digital_platform_consumer_purchase",
    "gcp_ad_digital_platform_consumer_entappint",
    "gcp_ad_digital_platform_consumer_Data_Management",
    "gcp_ad_digital_platform_consumer_person",
    "gcp_ad_digital_platform_consumer_mobile_cma",
    "gcp_ad_digital_platform_consumer_ccaexp",
    "gcp_ad_digital_platform_consumer_als",
    "gcp_ad_global_integrations",
    "gcp_ad_digital_platform_consumer_scsms",
    "gcp_ad_digital_platform_consumer_lens",
    "gcp_ad_digital_platform_consumer_fintech",
    "gcp_ad_digital_platform_consumer_dacipocadm",
    "gcp_ad_digital_platform_consumer_plmp",
    "gcp_ad_digital_platform_consumer_wcd",
    "gcp_ad_digital_platform_consumer_ecm",
    "gcp_ad_digital_platform_consumer_cost",
    "gcp_ad_digital_platform_consumer_sco",
    "gcp_ad_digital_platform_consumer_sctms",
    "gcp_ad_merch_platform_consumer_ao",
    "gcp_ad_digital_platform_consumer_lpsa",
  ]
}

variable "enable_privileged_pod_access" {
  description = "Allow port-forwarding and exec access to deployed pods."
  default     = false
}

variable "enable_seo_datastore_access" {
  description = "Allow users to tweak datastore results as needed."
  default     = false
}

########################################################
#    CARBON Developer specific AD group permissions.    #
########################################################
variable "gcp_ad_digital_carbon_developer_names" {
  type        = "list"
  description = "List of the Google Group Accounts who require carbon developer role"

  default = [
    "gcp_ad_digital_sre_admin"
  ]
}
