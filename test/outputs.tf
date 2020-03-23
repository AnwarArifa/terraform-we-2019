output "expected_consumer_role_list" {
    value = "${var.gcp_ad_digital_platform_consumer_group_names}"
}

output "actual_consumer_role_list" {
    value = "${google_project_iam_member.services_consumer_group_container_developer.*.member}"
}
 
output "actual_view_role_members" {
    value = "${google_project_iam_member.services_consumer_group_view.*.member}"
}

output "enable_privileged_pod_access" {
    value = "${var.enable_privileged_pod_access}"
}
 
output "enable_seo_datastore_access" {
    value = "${var.enable_seo_datastore_access}"
}
 
output "expected_developer_role_members" {
  value = "${var.gcp_ad_digital_carbon_developer_names}"
}
 
output "actual_developer_role_members" {
    value = "${google_project_iam_member.services_digital_group_carbon_developer.*.member}"
}
