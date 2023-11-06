resource "azurerm_resource_group" "RG" {
  name     = var.azurerm_rg_name  
  location = var.azurerm_rg_location  
  count = var.create_resource_group ? 1 : 0

}

