

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "azuretestcicd76757-asp"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "app_service" {
  name                = "azuretestcicd76757-asp"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  site_config {
   // always_on        = false
    java_version           = "8"
    java_container         = "TOMCAT"
    java_container_version = "10"
  }

  app_settings = {
    "SOME_KEY" = "kevalueone"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}
