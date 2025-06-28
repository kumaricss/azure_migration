terraform {
  backend "azurerm" {
    resource_group_name  = "dev-titanium-mgmt-rsg01"
    storage_account_name = "devtitaniumterraformstg1"
    container_name       = "dev-titanium-tfstate"
    key                  = "dev-terraform.tfstate"
  }
}