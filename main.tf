terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }
}
data "azurerm_resource_group" "rsg" {
  name = var.resource_group_name
}

# Configure the Azure Storage Account
resource "azurerm_storage_account" "sta" {
  name                     = var.sta_name
  resource_group_name      = data.azurerm_resource_group.rsg.name
  location                 = data.azurerm_resource_group.rsg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment_tag
  }

  depends_on = [
    data.azurerm_resource_group.rsg
  ]
}