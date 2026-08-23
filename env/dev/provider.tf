terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "az-rg-devops01"
    storage_account_name = "azstgdevops01"
    container_name       = "azstgdevcontainer"
    key                  = "devrg.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}
