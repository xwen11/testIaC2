terraform {
  backend "azurerm" {
    resource_group_name  = "testIaC"
    storage_account_name = "testiac"
    container_name       = "containerwen"
    key                  = "{{.GroupName}}.tfstate"
    use_azuread_auth     = true
    subscription_id      = "de3c4d5e-af08-451a-a873-438d86ab6f4b"
  }
}
