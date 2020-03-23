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
	//#     folder
	//#######################################
	actualNetworkFolderName := terraform.Output(t, terraformOptions, "actual_network_folder_name")
	log.Printf("Located an output of actual_network_folder_name with value: %v\n", actualNetworkFolderName)
	assert.NotEmpty(t, actualNetworkFolderName)
	expectedNetworkFolderName := terraform.Output(t, terraformOptions, "expected_network_folder_name")
	log.Printf("Located an output of expected_network_folder_name with value: %v\n", expectedNetworkFolderName)
	assert.NotEmpty(t, expectedNetworkFolderName)

	assert.Equal(t, expectedNetworkFolderName, actualNetworkFolderName)

	actualInfraFolderName := terraform.Output(t, terraformOptions, "actual_infra_folder_name")
	log.Printf("Located an output of actual_infra_folder_name with value: %v\n", actualInfraFolderName)
	assert.NotEmpty(t, actualInfraFolderName)
	expectedInfraFolderName := terraform.Output(t, terraformOptions, "expected_infra_folder_name")
	log.Printf("Located an output of actual_infra_folder_name with value: %v\n", expectedInfraFolderName)
	assert.NotEmpty(t, expectedInfraFolderName)

	assert.Equal(t, expectedInfraFolderName, actualInfraFolderName)

	actualInfraNPEFolderName := terraform.Output(t, terraformOptions, "actual_infra_npe_folder_name")
	log.Printf("Located an output of actual_infra_npe_folder_name with value: %v\n", actualInfraNPEFolderName)
	assert.NotEmpty(t, actualInfraNPEFolderName)
	expectedInfraNPEFolderName := terraform.Output(t, terraformOptions, "expected_infra_npe_folder_name")
	log.Printf("Located an output of expected_infra_npe_folder_name with value: %v\n", expectedInfraNPEFolderName)
	assert.NotEmpty(t, expectedInfraNPEFolderName)

	assert.Equal(t, expectedInfraNPEFolderName, actualInfraNPEFolderName)

	actualInfraPRODFolderName := terraform.Output(t, terraformOptions, "actual_infra_prod_folder_name")
	log.Printf("Located an output of actual_infra_prod_folder_name with value: %v\n", actualInfraPRODFolderName)
	assert.NotEmpty(t, actualInfraPRODFolderName)
	expectedInfraPRODFolderName := terraform.Output(t, terraformOptions, "expected_infra_prod_folder_name")
	log.Printf("Located an output of expected_infra_prod_folder_name with value: %v\n", expectedInfraPRODFolderName)
	assert.NotEmpty(t, expectedInfraPRODFolderName)

	assert.Equal(t, expectedInfraPRODFolderName, actualInfraPRODFolderName)

	actualIntegrationsFolderName := terraform.Output(t, terraformOptions, "actual_integrations_folder_name")
	log.Printf("Located an output of actual_integrations_folder_name with value: %v\n", actualIntegrationsFolderName)
	assert.NotEmpty(t, actualIntegrationsFolderName)
	expectedIntegrationsFolderName := terraform.Output(t, terraformOptions, "expected_integrations_folder_name")
	log.Printf("Located an output of expected_integrations_folder_name with value: %v\n", expectedIntegrationsFolderName)
	assert.NotEmpty(t, expectedIntegrationsFolderName)

	assert.Equal(t, expectedIntegrationsFolderName, actualIntegrationsFolderName)

	actualIntegrationsNPEFolderName := terraform.Output(t, terraformOptions, "actual_integrations_npe_folder_name")
	log.Printf("Located an output of actual_integrations_folder_name with value: %v\n", actualIntegrationsNPEFolderName)
	assert.NotEmpty(t, actualIntegrationsNPEFolderName)
	expectedIntegrationsNPEFolderName := terraform.Output(t, terraformOptions, "expected_integrations_npe_folder_name")
	log.Printf("Located an output of expected_integrations_folder_name with value: %v\n", expectedIntegrationsNPEFolderName)
	assert.NotEmpty(t, expectedIntegrationsNPEFolderName)

	assert.Equal(t, expectedIntegrationsNPEFolderName, actualIntegrationsNPEFolderName)

	actualIntegrationsPRDFolderName := terraform.Output(t, terraformOptions, "actual_integrations_prd_folder_name")
	log.Printf("Located an output of actual_integrations_folder_name with value: %v\n", actualIntegrationsPRDFolderName)
	assert.NotEmpty(t, actualIntegrationsPRDFolderName)
	expectedIntegrationsPRDFolderName := terraform.Output(t, terraformOptions, "expected_integrations_prd_folder_name")
	log.Printf("Located an output of expected_integrations_folder_name with value: %v\n", expectedIntegrationsPRDFolderName)
	assert.NotEmpty(t, expectedIntegrationsPRDFolderName)

	assert.Equal(t, expectedIntegrationsPRDFolderName, actualIntegrationsPRDFolderName)

	actualCloudGovernanceFolderName := terraform.Output(t, terraformOptions, "actual_cloudgovernance_folder_name")
	log.Printf("Located an output of actual_cloudgovernance_folder_name with value %v\n", actualCloudGovernanceFolderName)
	assert.NotEmpty(t, actualCloudGovernanceFolderName)
	expectedCloudGoveranceFolderName := terraform.Output(t, terraformOptions, "expected_cloudgovernance_folder_name")
	log.Printf("Located an output of expected_cloudgovernance_folder_name with value %v\n", expectedCloudGoveranceFolderName)
	assert.NotEmpty(t, expectedCloudGoveranceFolderName)

	assert.Equal(t, expectedCloudGoveranceFolderName, actualCloudGovernanceFolderName)

	actualDigitalDatascienceFolderName := terraform.Output(t, terraformOptions, "actual_digital_datascience_folder_name")
	log.Printf("Located an output of actual_digital_datascience_folder_name with value: %v\n", actualDigitalDatascienceFolderName)
	assert.NotEmpty(t, actualDigitalDatascienceFolderName)
	expectedDigitalDatascienceFolderName := terraform.Output(t, terraformOptions, "expected_digital_datascience_folder_name")
	log.Printf("Located an output of expected_digital_datascience_folder_name with value: %v\n", expectedDigitalDatascienceFolderName)
	assert.NotEmpty(t, expectedDigitalDatascienceFolderName)

	assert.Equal(t, expectedDigitalDatascienceFolderName, actualDigitalDatascienceFolderName)

	actualDigitalDatascienceNPEFolderName := terraform.Output(t, terraformOptions, "actual_digital_datascience_npe_folder_name")
	log.Printf("Located an output of actual_digital_datascience_npe_folder_name with value: %v\n", actualDigitalDatascienceNPEFolderName)
	assert.NotEmpty(t, actualDigitalDatascienceNPEFolderName)
	expectedDigitalDatascienceNPEFolderName := terraform.Output(t, terraformOptions, "expected_digital_datascience_npe_folder_name")
	log.Printf("Located an output of expected_digital_datascience_npe_folder_name with value: %v\n", expectedDigitalDatascienceNPEFolderName)
	assert.NotEmpty(t, expectedDigitalDatascienceNPEFolderName)

	assert.Equal(t, expectedDigitalDatascienceNPEFolderName, actualDigitalDatascienceNPEFolderName)

	actualDigitalDatasciencePRODFolderName := terraform.Output(t, terraformOptions, "actual_digital_datascience_prod_folder_name")
	log.Printf("Located an output of actual_digital_datascience_prod_folder_name with value: %v\n", actualDigitalDatasciencePRODFolderName)
	assert.NotEmpty(t, actualDigitalDatasciencePRODFolderName)
	expectedDigitalDatasciencePRODFolderName := terraform.Output(t, terraformOptions, "expected_digital_datascience_prod_folder_name")
	log.Printf("Located an output of expected_digital_datascience_prod_folder_name with value: %v\n", expectedDigitalDatasciencePRODFolderName)
	assert.NotEmpty(t, expectedDigitalDatasciencePRODFolderName)

	assert.Equal(t, expectedDigitalDatasciencePRODFolderName, actualDigitalDatasciencePRODFolderName)

	actualNonDigitalDatascienceQAFolderName := terraform.Output(t, terraformOptions, "actual_non_digital_datascience_qa_folder_name")
	log.Printf("Located an output of actual_non_digital_datascience_qa_folder_name with value: %v\n", actualNonDigitalDatascienceQAFolderName)
	assert.NotEmpty(t, actualNonDigitalDatascienceQAFolderName)
	expectedNonDigitalDatascienceQAFolderName := terraform.Output(t, terraformOptions, "expected_non_digital_datascience_qa_folder_name")
	log.Printf("Located an output of expected_non_digital_datascience_qa_folder_name with value: %v\n", expectedNonDigitalDatascienceQAFolderName)
	assert.NotEmpty(t, expectedNonDigitalDatascienceQAFolderName)

	assert.Equal(t, expectedNonDigitalDatascienceQAFolderName, actualNonDigitalDatascienceQAFolderName)

	actualNonDigitalDatasciencePRODFolderName := terraform.Output(t, terraformOptions, "actual_non_digital_datascience_prod_folder_name")
	log.Printf("Located an output of actual_non_digital_datascience_prod_folder_name with value: %v\n", actualNonDigitalDatasciencePRODFolderName)
	assert.NotEmpty(t, actualNonDigitalDatasciencePRODFolderName)
	expectedNonDigitalDatasciencePRODFolderName := terraform.Output(t, terraformOptions, "expected_non_digital_datascience_prod_folder_name")
	log.Printf("Located an output of expected_non_digital_datascience_prod_folder_name with value: %v\n", expectedNonDigitalDatasciencePRODFolderName)
	assert.NotEmpty(t, expectedNonDigitalDatasciencePRODFolderName)

	assert.Equal(t, expectedNonDigitalDatasciencePRODFolderName, actualNonDigitalDatasciencePRODFolderName)
}
