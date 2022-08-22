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
  features {}
}

 
module "acr" {
  source   = "./modules/acr"
  resource_group_name = "ecremmocetesttfrg"
  location = "Korea Central"
  acr_name = "ecremmocetesttfacr"
}