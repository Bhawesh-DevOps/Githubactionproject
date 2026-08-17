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