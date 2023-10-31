resource "azurerm_storage_account" "example" {
  name                     = "storestatefile"
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "Dev-store-tfstate"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "dev-statefile"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}