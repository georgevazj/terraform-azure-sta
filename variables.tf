# Azure authentication
variable "subscription_id" {
  type = string
  description = "(Required) Azure subscription id"
}

variable "tenant_id" {
  type = string
  description = "(Required) Azure tenant id"
}

variable "client_id" {
  type = string
  description = "(Required) Service principal client id"
}

variable "client_secret" {
  type = string
  description = "(Required) Service principal client secret"
}

# Azure resource group
variable "resource_group_name" {
  type = string
  description = "(Required) Resource group name"
}

# Azure storage account
variable "resource_group_name" {
  type = string
  description = "(Required) Target resource group name"
}

variable "sta_name" {
  type = string
  description = "(Required) Storage account name"
}

variable "sta_location" {
  type = string
  description = "(Optional) Storage account Location. Default: westeurope"
  default = "westeurope"
}

variable "account_tier" {
  type = string
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium"
  default = "Standard"
}

variable "account_replication_type" {
  type = string
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  default = "LRS"
}

variable "environment_tag" {
  type = string
  description = "(Optional) Environment tag"
  default = "Sandbox"
}