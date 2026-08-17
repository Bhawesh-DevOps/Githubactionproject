terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.80"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "myrg1" {
      name = "myrg"
    location = "eastus"
  }
resource "azurerm_storage_account" "stg1" {
    name = "stgq"
    resource_group_name = azurerm_resource_group.myrg1.name
    location = azurerm_resource_group.myrg1.location
    account_replication_type = "LRS"
    account_tier = "Standard"
    }
