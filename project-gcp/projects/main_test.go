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
	//#     Project Specific Tests
	//#######################################
	gkeOnPremProjectNumber := terraform.Output(t, terraformOptions, "gkeonprm_npe_project_number")
	log.Printf("Located an output of gkeonprm_npe_project_number with value: %v\n", gkeOnPremProjectNumber)
	assert.NotEmpty(t, gkeOnPremProjectNumber)

	gkeOnPremProjectID := terraform.Output(t, terraformOptions, "gkeonprm_npe_project_id")
	log.Printf("Located an output of gkeonprm_npe_project_id with value: %v\n", gkeOnPremProjectID)
	assert.NotEmpty(t, gkeOnPremProjectID)

	//network npe tests
	networkNpeProjectNumber := terraform.Output(t, terraformOptions, "network_npe_project_number")
	log.Printf("Located an output of network_npe_project_number with value: %v\n", networkNpeProjectNumber)
	assert.NotEmpty(t, networkNpeProjectNumber)

	networkNpeProjectID := terraform.Output(t, terraformOptions, "network_npe_project_id")
	log.Printf("Located an output of network_npe_project_id with value: %v\n", networkNpeProjectID)
	assert.NotEmpty(t, networkNpeProjectID)

	//network prd tests
	networkPrdProjectNumber := terraform.Output(t, terraformOptions, "network_prd_project_number")
	log.Printf("Located an output of network_prd_project_number with value: %v\n", networkPrdProjectNumber)
	assert.NotEmpty(t, networkPrdProjectNumber)

	networkPrdProjectID := terraform.Output(t, terraformOptions, "network_prd_project_id")
	log.Printf("Located an output of network_prd_project_id with value: %v\n", networkPrdProjectID)
	assert.NotEmpty(t, networkPrdProjectID)

	// Carbon platform projects
	devopsPrdProjectID := terraform.Output(t, terraformOptions, "carbon_devops_prd_project_id")
	log.Printf("Located an output of carbon_devops_prd_project_id with value: %v\n", devopsPrdProjectID)
	assert.NotEmpty(t, devopsPrdProjectID)

	svcsPrdProjectID := terraform.Output(t, terraformOptions, "carbon_svcs_prd_project_id")
	log.Printf("Located an output of carbon_svcs_prd_project_id with value: %v\n", svcsPrdProjectID)
	assert.NotEmpty(t, svcsPrdProjectID)

	dbmsPrdProjectID := terraform.Output(t, terraformOptions, "carbon_dbms_prd_project_id")
	log.Printf("Located an output of carbon_dbms_prd_project_id with value: %v\n", dbmsPrdProjectID)
	assert.NotEmpty(t, dbmsPrdProjectID)

	// Search Prod project
	searchPrdProjectID := terraform.Output(t, terraformOptions, "search_prd_project_id")
	log.Printf("Located an output of search_prd_project_id with value: %v\n", searchPrdProjectID)
	assert.NotEmpty(t, searchPrdProjectID)

	// Ushi daci npe project
	daciNpeProjectID := terraform.Output(t, terraformOptions, "ushi_daci_npe_project_id")
	log.Printf("Located an output of ushi_daci_npe_project_id with value: %v\n", daciNpeProjectID)
	assert.NotEmpty(t, daciNpeProjectID)

	// Ushi identity npe project
	identityNpeProjectID := terraform.Output(t, terraformOptions, "ushi_identity_npe_project_id")
	log.Printf("Located an output of ushi-identity-npe_project_id with value: %v\n", identityNpeProjectID)
	assert.NotEmpty(t, identityNpeProjectID)

	// Ushi predevops npe project
	predevopsNpeProjectID := terraform.Output(t, terraformOptions, "carbon_predevops_npe_project_id")
	log.Printf("Located an output of carbon_predevops_npe_project_id with value: %v\n", predevopsNpeProjectID)
	assert.NotEmpty(t, predevopsNpeProjectID)

	// Ushi predevsvcs npe project
	predevsvcsNpeProjectID := terraform.Output(t, terraformOptions, "carbon_predevsvcs_npe_project_id")
	log.Printf("Located an output of carbon_predevsvcs_npe_project_id with value: %v\n", predevsvcsNpeProjectID)
	assert.NotEmpty(t, predevsvcsNpeProjectID)

	// Ushi predevdbms npe project
	predevdbmsNpeProjectID := terraform.Output(t, terraformOptions, "carbon_predevdbms_npe_project_id")
	log.Printf("Located an output of carbon_predevdbms_npe_project_id with value: %v\n", predevdbmsNpeProjectID)
	assert.NotEmpty(t, predevdbmsNpeProjectID)

	// Ushi assetmgmt npe proj
	assetmgmtNpeProjectID := terraform.Output(t, terraformOptions, "ushi_assetmgmt_npe_project_id")
	log.Printf("Located an output of ushi_assetmgmt_npe_project_id with value: %v\n", assetmgmtNpeProjectID)
	assert.NotEmpty(t, assetmgmtNpeProjectID)

	// Ushi Infrastructure npe project personalization
	infraPersonalNpeProjectID := terraform.Output(t, terraformOptions, "ushi_infra_personal_npe_project_id")
	log.Printf("Located an output of ushi_infra_personal_npe_project_id with value: %v\n", infraPersonalNpeProjectID)
	assert.NotEmpty(t, infraPersonalNpeProjectID)

	// Ushi apigee npe project
	apigeeNpeProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-apigee-npe_project_id")
	log.Printf("Located an output of gcp-ushi-apigee-npe_project_id with value: %v\n", apigeeNpeProjectID)
	assert.NotEmpty(t, apigeeNpeProjectID)

	// nondigital daci-ingestion npe project
	daciingestionProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-daci-ingestion-npe_project_id")
	log.Printf("Located an output of gcp-ushi-daci-ingestion-npe_project_id with value: %v\n", daciingestionProjectID)
	assert.NotEmpty(t, daciingestionProjectID)

	// Ushi dataengg npe project
	dataenggNpeProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-dataengg-npe_project_id")
	log.Printf("Located an output of gcp-ushi-dataengg-npe_project_id with value: %v\n", dataenggNpeProjectID)
	assert.NotEmpty(t, dataenggNpeProjectID)

	// nondigital daci transform npe project
	dacitransformNpeProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-daci-transform-npe_project_id")
	log.Printf("Located an output of gcp-ushi-daci-transform-npe_project_id with value: %v\n", dacitransformNpeProjectID)
	assert.NotEmpty(t, dacitransformNpeProjectID)

	// Ushi telemetry npe project
	telemetryNpeProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-telemetry-npe_project_id")
	log.Printf("Located an output of gcp-ushi-telemetry-npe_project_id with value: %v\n", telemetryNpeProjectID)
	assert.NotEmpty(t, telemetryNpeProjectID)

	// nondigital daci serve npe project
	daciserveNpeProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-daci-serve-npe_project_id")
	log.Printf("Located an output of gcp-ushi-daci-serve-npe_project_id with value: %v\n", daciserveNpeProjectID)
	assert.NotEmpty(t, daciserveNpeProjectID)

	// Ushi telemetry npe project
	telemetryPrdProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-telemetry-prd_project_id")
	log.Printf("Located an output of gcp-ushi-telemetry-prd_project_id with value: %v\n", telemetryPrdProjectID)
	assert.NotEmpty(t, telemetryPrdProjectID)

	// CloudGovernance sandbox project
	cloudgovernanceSandboxProjectID := terraform.Output(t, terraformOptions, "cloudgovernance_sandbox_project_id")
	log.Printf("Located an output of cloudgovernance_sandbox_project_id with value: %v\n", cloudgovernanceSandboxProjectID)
	assert.NotEmpty(t, cloudgovernanceSandboxProjectID)

	// Ushi assetmgmt Prod project
	assetmgmtPrdProjectID := terraform.Output(t, terraformOptions, "ushi_infra_assetmgt_prd_project_id")
	log.Printf("Located an output of ushi_assetmgmt_prd_project_id with value: %v\n", assetmgmtPrdProjectID)
	assert.NotEmpty(t, assetmgmtPrdProjectID)

	// Ushi dataint npe project
	dataintNpeProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-dataint-npe_project_id")
	log.Printf("Located an output of gcp-ushi-dataint-npe_project_id with value: %v\n", dataintNpeProjectID)
	assert.NotEmpty(t, dataintNpeProjectID)

	// Non-Digital Datascience QA projects
	dsIngestQAProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-ingest-qa-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-ingest-qa-project_id: %v\n", dsIngestQAProjectID)
	assert.NotEmpty(t, dsIngestQAProjectID)

	dsProcessQAProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-process-qa-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-process-qa-project_id: %v\n", dsProcessQAProjectID)
	assert.NotEmpty(t, dsProcessQAProjectID)

	dsAnalyzeQAProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-analyze-qa-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-analyze-qa-project_id: %v\n", dsAnalyzeQAProjectID)
	assert.NotEmpty(t, dsAnalyzeQAProjectID)

	dsDigitalQAProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-digital-qa-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-digital-qa-project_id: %v\n", dsDigitalQAProjectID)
	assert.NotEmpty(t, dsDigitalQAProjectID)

	// Non-Digital Datascience PRD projects
	dsIngestPRODProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-ingest-prd-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-ingest-prd-project_id: %v\n", dsIngestPRODProjectID)
	assert.NotEmpty(t, dsIngestPRODProjectID)

	dsProcessPRODProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-process-prd-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-process-prd-project_id: %v\n", dsProcessPRODProjectID)
	assert.NotEmpty(t, dsProcessPRODProjectID)

	dsAnalyzePRODProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-analyze-prd-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-analyze-prd-project_id: %v\n", dsAnalyzePRODProjectID)
	assert.NotEmpty(t, dsAnalyzePRODProjectID)

	dsDigitalPRODProjectID := terraform.Output(t, terraformOptions, "gcp-ushi-nondigital-datascience-digital-prd-project_id")
	log.Printf("Located an output of gcp-ushi-nondigital-datascience-digital-prd-project_id: %v\n", dsDigitalPRODProjectID)
	assert.NotEmpty(t, dsDigitalPRODProjectID)

	// Ushi onpremops npe project
	onpremopsNpeProjectID := terraform.Output(t, terraformOptions, "carbon_onprem_ops_npe_project_id")
	log.Printf("Located an output of carbon_onprem_ops_npe_project_id with value: %v\n", onpremopsNpeProjectID)
	assert.NotEmpty(t, onpremopsNpeProjectID)

	// Ushi carbon stores  project
	carbonStoresProjectID := terraform.Output(t, terraformOptions, "carbon_stores_project_id")
	log.Printf("Located an output of carbon_stores_project_id with value: %v\n", carbonStoresProjectID)
	assert.NotEmpty(t, carbonStoresProjectID)
}
