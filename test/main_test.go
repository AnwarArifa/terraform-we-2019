package main
 
import (
    "log"
    "strings"
    "testing"
 
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)
 
func TestApplyModule(t *testing.T) {
    terraformOptions := &terraform.Options{
        TerraformDir: ".",
    }
 
    expectedConsumerRoleListString := terraform.Output(t, terraformOptions, "expected_consumer_role_list")
    log.Printf("Located an output of expected_consumer_role_list with value: %T\n", expectedConsumerRoleListString)
    assert.NotEmpty(t, expectedConsumerRoleListString)
    expectedConsumerRoleList := strings.Split(expectedConsumerRoleListString, ",")
 
    actualConsumerRoleListString := terraform.Output(t, terraformOptions, "actual_consumer_role_list")
    log.Printf("Located an output of actual_consumer_role_list with value: %T\n", actualConsumerRoleListString)
    assert.NotEmpty(t, actualConsumerRoleListString)
    actualConsumerRoleList := strings.Split(actualConsumerRoleListString, ",")
 
    actualViewAccessMembersString := terraform.Output(t, terraformOptions, "actual_view_role_members")                                                    
    log.Printf("Located an output of actual_view_role_members with value: %T\n", actualViewAccessMembersString)
    assert.NotEmpty(t, actualViewAccessMembersString)
    actualViewAccessMembers := strings.Split(actualViewAccessMembersString, ",")
    
    enablePrivlidgedPodAccess := terraform.Output(t, terraformOptions, "enable_privileged_pod_access")
    log.Printf("Located an output of enable_privileged_pod_access with value: %T\n", enablePrivlidgedPodAccess)
    assert.NotEmpty(t, enablePrivlidgedPodAccess)
 
    assert.Equal(t, len(expectedConsumerRoleList), len(actualViewAccessMembers))    

    if enablePrivlidgedPodAccess == "1" {
        assert.Equal(t, len(expectedConsumerRoleList), len(actualConsumerRoleList))
    }
 
    expectedDeveloperRoleListString := terraform.Output(t, terraformOptions, "expected_developer_role_members")
    log.Printf("Located an output of expected_developer_role_members with value: %T\n", expectedDeveloperRoleListString)
    assert.NotEmpty(t, expectedDeveloperRoleListString)
    expectedDeveloperRoleList := strings.Split(expectedDeveloperRoleListString, ",")
    log.Printf("Located an output of expectedConsumerRoleList with value: %T\n", expectedDeveloperRoleList)
 
    actualDeveloperRoleListString := terraform.Output(t, terraformOptions, "actual_developer_role_members")
    log.Printf("Located an output of actual_developer_role_members with value: %T\n", actualDeveloperRoleListString)
    assert.NotEmpty(t, actualDeveloperRoleListString)
    actualDeveloperRoleList := strings.Split(actualDeveloperRoleListString, ",")
    log.Printf("Located an output of actualDeveloperRoleList with value: %T\n", actualDeveloperRoleList)
 
    assert.Equal(t, len(expectedDeveloperRoleList), len(actualDeveloperRoleList))

}