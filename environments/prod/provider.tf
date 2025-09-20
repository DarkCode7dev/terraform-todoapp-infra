terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = "rgdevopsinsider"
      storage_account_name = "twostatesstorage"
      container_name       = "tfstate"
      key                  = "prod.tfstate"
    }
}

provider "azurerm" {
  features {}
  subscription_id = "f0641b2c-ae07-4eb4-abb0-7be5a73752cd"
}
