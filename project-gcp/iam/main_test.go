package test

import (
	"log"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestApplyModule(t *testing.T) {
	terraformOptions := &terraform.Options{
		TerraformDir: ".",
	}

	//#######################################
	//#     Project IAM SA Specific Tests
	//#######################################

	terraformIamOpsNpeID := terraform.Output(t, terraformOptions, "terraform-iam-ops-npe_account-id")
	log.Printf("Located an output of terraform-iam-ops-npe_account-id with value: %v\n", terraformIamOpsNpeID)
	assert.NotEmpty(t, terraformIamOpsNpeID)

	terraformIamOpsPrdID := terraform.Output(t, terraformOptions, "terraform-iam-ops-prd_account-id")
	log.Printf("Located an output of terraform-iam-ops-prd_account-id with value: %v\n", terraformIamOpsPrdID)
	assert.NotEmpty(t, terraformIamOpsPrdID)

	terraformIamInvNpeID := terraform.Output(t, terraformOptions, "terraform-iam-inv-npe_account-id")
	log.Printf("Located an output of terraform-iam-inv-npe_account-id with value: %v\n", terraformIamInvNpeID)
	assert.NotEmpty(t, terraformIamInvNpeID)

	//Network npe
	terraformIamNetworkNpeID := terraform.Output(t, terraformOptions, "terraform-iam-network-npe_account-id")
	log.Printf("Located an output of terraform-iam-network-npe_account-id with value: %v\n", terraformIamNetworkNpeID)
	assert.NotEmpty(t, terraformIamNetworkNpeID)

	//Network prd
	terraformIamNetworkPrdID := terraform.Output(t, terraformOptions, "terraform-iam-network-prd_account-id")
	log.Printf("Located an output of terraform-iam-network-prd_account-id with value: %v\n", terraformIamNetworkPrdID)
	assert.NotEmpty(t, terraformIamNetworkPrdID)

	//Carbon sandbox npe
	terraformIamCarbonSandboxNpeID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-sandbox-npe_account-id")
	log.Printf("Located an output of terraform-iam-carbon-sandbox-npe_account-id with value: %v\n", terraformIamCarbonSandboxNpeID)
	assert.NotEmpty(t, terraformIamCarbonSandboxNpeID)

	//Carbon devops npe
	terraformIamCarbonDevOpsNpeID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-devops-npe_account-id")
	log.Printf("Located an output of terraform-iam-carbon-devops-npe_account-id with value: %v\n", terraformIamCarbonDevOpsNpeID)
	assert.NotEmpty(t, terraformIamCarbonDevOpsNpeID)

	//Carbon svcs dev
	terraformIamCarbonSvcsDevID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-svcs-dev_account-id")
	log.Printf("Located an output of terraform-iam-carbon-svcs-dev_account-id with value: %v\n", terraformIamCarbonSvcsDevID)
	assert.NotEmpty(t, terraformIamCarbonSvcsDevID)

	//Carbon svcs dev
	monitoringAgentCarbonSvcsDevID := terraform.Output(t, terraformOptions, "monitoring-carbon-svcs-dev_account-id")
	log.Printf("Located an output of monitoring-carbon-svcs-dev_account-id with value: %v\n", monitoringAgentCarbonSvcsDevID)
	assert.NotEmpty(t, monitoringAgentCarbonSvcsDevID)

	//Carbon svcs dev
	gcrCarbonSvcsDevID := terraform.Output(t, terraformOptions, "gcr-carbon-svcs-dev_account-id")
	log.Printf("Located an output of gcr-carbon-svcs-dev_account-id with value: %v\n", gcrCarbonSvcsDevID)
	assert.NotEmpty(t, gcrCarbonSvcsDevID)

	//Carbon svcs stage
	terraformIamCarbonSvcsStageID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-svcs-stage_account-id")
	log.Printf("Located an output of terraform-iam-carbon-svcs-stage_account-id with value: %v\n", terraformIamCarbonSvcsStageID)
	assert.NotEmpty(t, terraformIamCarbonSvcsStageID)

	//Carbon svcs stage
	monitoringAgentCarbonSvcsStageID := terraform.Output(t, terraformOptions, "monitoring-carbon-svcs-stg_account-id")
	log.Printf("Located an output of monitoring-carbon-svcs-stg_account-id with value: %v\n", monitoringAgentCarbonSvcsStageID)
	assert.NotEmpty(t, monitoringAgentCarbonSvcsStageID)

	//Carbon svcs prd
	terraformIamCarbonSvcsPrdID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-svcs-prd_account-id")
	log.Printf("Located an output of terraform-iam-carbon-svcs-prd_account-id with value: %v\n", terraformIamCarbonSvcsPrdID)
	assert.NotEmpty(t, terraformIamCarbonSvcsPrdID)

	//Carbon svcs prd
	monitoringAgentCarbonSvcsPrdID := terraform.Output(t, terraformOptions, "monitoring-carbon-svcs-prd_account-id")
	log.Printf("Located an output of monitoring-carbon-svcs-prd_account-id with value: %v\n", monitoringAgentCarbonSvcsPrdID)
	assert.NotEmpty(t, monitoringAgentCarbonSvcsPrdID)

	//Carbon dbms dev
	terraformIamCarbonDbmsDevID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-dbms-dev_account-id")
	log.Printf("Located an output of terraform-iam-carbon-dbms-dev_account-id with value: %v\n", terraformIamCarbonDbmsDevID)
	assert.NotEmpty(t, terraformIamCarbonDbmsDevID)

	//Carbon dbms predev
	terraformIamCarbonDbmspreDevID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-dbms-predev_account-id")
	log.Printf("Located an output of terraform-iam-carbon-dbms-predev_account-id with value: %v\n", terraformIamCarbonDbmspreDevID)
	assert.NotEmpty(t, terraformIamCarbonDbmspreDevID)

	//Carbon dbms stage
	terraformIamCarbonDbmsSTGID := terraform.Output(t, terraformOptions, "terraform-iam-carbon-dbms-stage_account-id")
	log.Printf("Located an output of terraform-iam-carbon-dbms-stage_account-id with value: %v\n", terraformIamCarbonDbmsSTGID)
	assert.NotEmpty(t, terraformIamCarbonDbmsSTGID)

	//search npe iam
	terraformIamSearchNpeID := terraform.Output(t, terraformOptions, "terraform-iam-terraform-carbon-search-npe_account-id")
	log.Printf("Located an output of terraform-iam-terraform-carbon-search-npe_account-id with value: %v\n", terraformIamSearchNpeID)
	assert.NotEmpty(t, terraformIamSearchNpeID)

	//search npe ssh
	terraformSSHSearchNpeID := terraform.Output(t, terraformOptions, "terraform-carbon-search-npe-ssh_account-id")
	log.Printf("Located an output of terraform-carbon-search-npe-ssh_account-id with value: %v\n", terraformSSHSearchNpeID)
	assert.NotEmpty(t, terraformSSHSearchNpeID)

	//search prd iam
	terraformIamSearchPrdID := terraform.Output(t, terraformOptions, "terraform-iam-terraform-carbon-search-prd_account-id")
	log.Printf("Located an output of terraform-iam-terraform-carbon-search-prd_account-id with value: %v\n", terraformIamSearchPrdID)
	assert.NotEmpty(t, terraformIamSearchPrdID)

	//search prd ssf
	terraformSSHSearchPrdID := terraform.Output(t, terraformOptions, "terraform-carbon-search-prd-ssh_account-id")
	log.Printf("Located an output of terraform-carbon-search-prd-ssh_account-id with value: %v\n", terraformSSHSearchPrdID)
	assert.NotEmpty(t, terraformSSHSearchPrdID)

	//ushi daci npe
	terraformushidaciNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-npe_account-id")
	log.Printf("Located an output of terraform-carbon-search-prd-ssh_account-id with value: %v\n", terraformushidaciNPEID)
	assert.NotEmpty(t, terraformushidaciNPEID)

	//ushi security npe
	terraformdlpNPEID := terraform.Output(t, terraformOptions, "terraform-dlp-npe_account-id")
	log.Printf("Located an output of terraform-dlp-npe-ssh_account-id with value: %v\n", terraformdlpNPEID)
	assert.NotEmpty(t, terraformdlpNPEID)

	//ushi security prd
	terraformdlpPRDID := terraform.Output(t, terraformOptions, "terraform-dlp-prd_account-id")
	log.Printf("Located an output of terraform-dlp-prd-ssh_account-id with value: %v\n", terraformdlpPRDID)
	assert.NotEmpty(t, terraformdlpPRDID)

	//ushi carbon devops prd
	terraformcvePRDID := terraform.Output(t, terraformOptions, "terraform-cve-prd_account-id")
	log.Printf("Located an output of terraform-cve-prd-ssh_account-id with value: %v\n", terraformcvePRDID)
	assert.NotEmpty(t, terraformcvePRDID)

	//ushi identity npe
	terraformushiidentityNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-identity-npe_account-id")
	log.Printf("Located an output of terraform-ushi-identity-npe_account-id with value: %v\n", terraformushiidentityNPEID)
	assert.NotEmpty(t, terraformushiidentityNPEID)

	//ushi identity prd
	terraformushiidentityPRDID := terraform.Output(t, terraformOptions, "terraform-ushi-identity-prd_account-id")
	log.Printf("Located an output of terraform-ushi-identity-prd_account-id with value: %v\n", terraformushiidentityPRDID)
	assert.NotEmpty(t, terraformushiidentityPRDID)

	//ushi predevops npe
	terraformushipredevopsNPEID := terraform.Output(t, terraformOptions, "terraform-predevops-npe_account-id")
	log.Printf("Located an output of terraform-predevops-npe_account-id with value: %v\n", terraformushipredevopsNPEID)
	assert.NotEmpty(t, terraformushipredevopsNPEID)

	//ushi predevsvcs npe
	terraformushipredevsvcsNPEID := terraform.Output(t, terraformOptions, "terraform-predevsvcs-npe_account-id")
	log.Printf("Located an output of terraform-predevsvcs-npe_account-id with value: %v\n", terraformushipredevsvcsNPEID)
	assert.NotEmpty(t, terraformushipredevsvcsNPEID)

	//ushi assetmgmt npe
	terraformushiassetmgmtNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-assetmgmt-npe_account-id")
	log.Printf("Located an output of terraform-ushi-assetmgmt-npe_account-id with value: %v\n", terraformushiassetmgmtNPEID)
	assert.NotEmpty(t, terraformushiassetmgmtNPEID)

	//ushi infra Personalization npe
	terraformushiinfraPersNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-infra-personalization-npe_account-id")
	log.Printf("Located an output of terraform-ushi-infra-personalization-npe_account-id with value: %v\n", terraformushiinfraPersNPEID)
	assert.NotEmpty(t, terraformushiinfraPersNPEID)

	//ushi apigee npe
	terraformushiapigeeNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-apigee-npe")
	log.Printf("Located an output of terraform-ushi-apigee-npe_account-id with value: %v\n", terraformushiapigeeNPEID)
	assert.NotEmpty(t, terraformushiapigeeNPEID)

	//nondogital daci npe
	terraformushidaciingestionNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-ingestion-npe")
	log.Printf("Located an output of terraform-ushi-daci-ingestion-npe_account-id with value: %v\n", terraformushidaciingestionNPEID)
	assert.NotEmpty(t, terraformushidaciingestionNPEID)

	//ushi dataengg npe
	terraformushidataenggNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-dataengg-npe")
	log.Printf("Located an output of terraform-ushi-dataengg-npe_account-id with value: %v\n", terraformushidataenggNPEID)
	assert.NotEmpty(t, terraformushidataenggNPEID)

	//nondigital transform npe
	terraformTransformNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-transform-npe")
	log.Printf("Located an output of terraform-ushi-daci-transform-npe_accountID with value: %v\n", terraformTransformNPEID)
	assert.NotEmpty(t, terraformTransformNPEID)

	//nondigital serve npe
	terraformServeNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-serve-npe")
	log.Printf("Located an output of terraform-ushi-daci-serve-npe_accountID with value: %v\n", terraformServeNPEID)
	assert.NotEmpty(t, terraformServeNPEID)

	//ushi telemetry npe
	terraformushitelemetryNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-telemetry-npe")
	log.Printf("Located an output of terraform-ushi-telemetry-npe_account-id with value: %v\n", terraformushitelemetryNPEID)
	assert.NotEmpty(t, terraformushitelemetryNPEID)

	//ushi telemetry npe
	terraformushitelemetryPRDID := terraform.Output(t, terraformOptions, "terraform-ushi-telemetry-prd")
	log.Printf("Located an output of terraform-ushi-telemetry-prd_account-id with value: %v\n", terraformushitelemetryPRDID)
	assert.NotEmpty(t, terraformushitelemetryPRDID)

	//Cloud Governance Sandbox
	terraformCloudGovernanceSandboxPRDID := terraform.Output(t, terraformOptions, "terraform-lws-cloud-governance-sandbox")
	log.Printf("Located an output of terraform-lws-cloud-governance-sandbox with value %v\n", terraformCloudGovernanceSandboxPRDID)
	assert.NotEmpty(t, terraformCloudGovernanceSandboxPRDID)

	//ushi assetmgmt prd
	terraformushiassetmgmtPRDID := terraform.Output(t, terraformOptions, "terraform-ushi-assetmgmt-prd_account-id")
	log.Printf("Located an output of terraform-ushi-assetmgmt-prd_account-id with value: %v\n", terraformushiassetmgmtPRDID)
	assert.NotEmpty(t, terraformushiassetmgmtPRDID)

	//ushi dataInt admin npe
	// terraformushidataintNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-dataint-npe")
	// log.Printf("Located an output of terraform-ushi-dataint-npe_account-id with value: %v\n", terraformushidataintNPEID)
	// assert.NotEmpty(t, terraformushidataintNPEID)

	terraformushicompServiceDEVID := terraform.Output(t, terraformOptions, "terraform-ushi-compute-service-dev")
	log.Printf("Located an output of terraform-ushi-compute-service-dev with value: %v\n", terraformushicompServiceDEVID)
	assert.NotEmpty(t, terraformushicompServiceDEVID)

	terraformushicompServiceSTAGEID := terraform.Output(t, terraformOptions, "terraform-ushi-compute-service-stage")
	log.Printf("Located an output of terraform-ushi-compute-service-stage with value: %v\n", terraformushicompServiceSTAGEID)
	assert.NotEmpty(t, terraformushicompServiceSTAGEID)

	terraformushicompServicePRDID := terraform.Output(t, terraformOptions, "terraform-ushi-compute-service-prd")
	log.Printf("Located an output of terraform-ushi-compute-service-prd with value: %v\n", terraformushicompServicePRDID)
	assert.NotEmpty(t, terraformushicompServicePRDID)

	//ushi daci ds npe
	terraformushidacidsNPEID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-ds-npe")
	log.Printf("Located an output of terraform-ushi-daci-ds-npe with value: %v\n", terraformushidacidsNPEID)
	assert.NotEmpty(t, terraformushidacidsNPEID)

	// NonDigital DACI QA Projects
	terraformAnalyzeQAID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-analyze-qa")
	log.Printf("Located an output of terraform-ushi-daci-analyze-qa with value: %v\n", terraformAnalyzeQAID)
	assert.NotEmpty(t, terraformAnalyzeQAID)

	terraformIngestQAID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-ingest-qa")
	log.Printf("Located an output of terraform-ushi-daci-analyze-qa with value: %v\n", terraformIngestQAID)
	assert.NotEmpty(t, terraformIngestQAID)

	terraformProcessQAID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-process-qa")
	log.Printf("Located an output of terraform-ushi-daci-analyze-qa with value: %v\n", terraformProcessQAID)
	assert.NotEmpty(t, terraformProcessQAID)

	terraformDigitalQAID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-digital-qa")
	log.Printf("Located an output of terraform-ushi-daci-analyze-qa with value: %v\n", terraformDigitalQAID)
	assert.NotEmpty(t, terraformDigitalQAID)

	// NonDigital DACI PROD Projects
	terraformAnalyzePrdID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-analyze-prd")
	log.Printf("Located an output of terraform-ushi-daci-analyze-prd with value: %v\n", terraformAnalyzePrdID)
	assert.NotEmpty(t, terraformAnalyzePrdID)

	terraformIngestPrdID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-ingest-prd")
	log.Printf("Located an output of terraform-ushi-daci-analyze-prd with value: %v\n", terraformIngestPrdID)
	assert.NotEmpty(t, terraformIngestPrdID)

	terraformProcessPrdID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-process-prd")
	log.Printf("Located an output of terraform-ushi-daci-analyze-prd with value: %v\n", terraformProcessPrdID)
	assert.NotEmpty(t, terraformProcessPrdID)

	terraformDigitalPrdID := terraform.Output(t, terraformOptions, "terraform-ushi-daci-digital-prd")
	log.Printf("Located an output of terraform-ushi-daci-analyze-prd with value: %v\n", terraformDigitalPrdID)
	assert.NotEmpty(t, terraformDigitalPrdID)

}
