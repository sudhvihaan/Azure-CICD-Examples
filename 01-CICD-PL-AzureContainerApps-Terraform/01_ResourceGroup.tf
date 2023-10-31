resource "azurerm_resource_group" "RG" {
  name     = var.azurerm_rg_name  # Just use the variable directly
  location = var.azurerm_rg_location  # Just use the variable directly
}

