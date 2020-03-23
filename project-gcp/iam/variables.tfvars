organization_id = "579210930343"

iam_sa_role_binding = [
        "roles/resourcemanager.projectIamAdmin",
        "roles/storage.admin",
        "roles/iam.serviceAccountAdmin",
],

iam_dlp_role_binding = [
        "roles/dlp.jobTriggersEditor",
        "roles/dlp.jobsEditor",
]

monitoring_sa_role_binding = [
        "roles/monitoring.viewer",
        "roles/storage.objectCreator",
]

iam_cve_role_binding = [
        "roles/pubsub.subscriber",
]

search_sa_dataproc_role_binding = [
        "roles/dataproc.admin",
        "roles/dataproc.worker",
        "roles/dataproc.serviceAgent",
        "roles/dataproc.editor",
        "roles/compute.instanceAdmin.v1",
        "roles/storage.admin",
]

search_sa_dataproc_network_role_binding = [
        "roles/compute.networkViewer",
        "roles/compute.networkUser"
]

sa-osimage_policy_project_binding = [
        "gcp-ushi-carbon-devops-npe",
        "gcp-ushi-compute-svc-dev",
        "gcp-ushi-compute-svc-stage",
        "gcp-ushi-compute-svc-prd",
        "gcp-ushi-search-platform-npe",
        "gcp-ushi-carbon-dbms-dev",
        "gcp-ushi-carbon-dbms-stage",
        "gcp-ushi-carbon-dbms-prd",
        "gcp-ushi-carbon-devops-prd",
        "gcp-ushi-search-platform-prd",
]