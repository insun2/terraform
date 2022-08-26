locals {
  location = "Korea Central"
  default_tags = {
    Environment = "prod"
    ManagedByTerraform = "true"
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.19.1"
    }
  }
  backend "azurerm" {
    resource_group_name = "tfstate"
    storage_account_name = "tfstate5348"
    container_name = "tfstate"
    key = "prod.terraform.tfstate" 
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  features {}
}