


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.15.00"
    }
  }
  backend "azurerm" {
    resource_group_name = "RG_JAVA_APP"
    storage_account_name = "storageac6674"
    container_name = "storestafefile"
    key = "statefile.tfstate"
  }
}

provider "azurerm" {
  features {}
}
