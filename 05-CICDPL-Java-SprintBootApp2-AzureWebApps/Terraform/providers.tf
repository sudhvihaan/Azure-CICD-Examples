terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.44.1"
    }
  }


  # Backend configuration for storing state in Azure Storage
  backend "azurerm" {
  resource_group_name   = "AKS-HEMLDemo"  
   // resource_group_name   = azurerm_resource_group.rg.name
    storage_account_name  = "storageac6674" # Replace with your Azure Storage account name
    container_name        = "storestafefile"       # Replace with the container name within the Storage account
    key                   = "terraformd-dev.tfstate"        # The name of the state file within the container
  }
}


provider "azurerm" {
  features {}
}
