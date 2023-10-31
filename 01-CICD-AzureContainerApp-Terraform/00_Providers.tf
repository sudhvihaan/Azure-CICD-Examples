terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.44.1"
    }
  }


  # Backend configuration for storing state in Azure Storage
  backend "azurerm" {
    resource_group_name   = "RG_DP_ACA"  # Replace with your Azure resource group name
    storage_account_name  = "storestatefile" # Replace with your Azure Storage account name
    container_name        = "dev-statefile"       # Replace with the container name within the Storage account
    key                   = "terraformd-dev.tfstate"        # The name of the state file within the container
  }
}

provider "azurerm" {
  features {}
}
