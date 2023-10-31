resource "azurerm_log_analytics_workspace" "az_log_analytics_ws" {
  name                = var.az_log_analytics_workspace
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_container_app_environment" "az_contaniner_app_env" {
  name                       = var.az_container_app_env
  location                   = azurerm_resource_group.RG.location
  resource_group_name        = azurerm_resource_group.RG.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.az_log_analytics_ws.id
}
resource "azurerm_container_app" "az_contaniner_app_name" {
  name                         = var.az_container_app_name
  container_app_environment_id = azurerm_container_app_environment.az_contaniner_app_env.id
  resource_group_name          = azurerm_resource_group.RG.name
  revision_mode                = "Single"

  template {
    container {
      name   = var.az_container_app_container_name
      image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }
}