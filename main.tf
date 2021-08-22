terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

data "azurerm_client_config" "current" {}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
  client_id = var.client_id
  client_secret = var.client_secret
}

# Configure the Azure Storage Account
resource "azurerm_storage_account" "sta" {
  name                     = var.sta_name
  resource_group_name      = var.resource_group_name
  location                 = var.sta_location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment_tag
  }
}