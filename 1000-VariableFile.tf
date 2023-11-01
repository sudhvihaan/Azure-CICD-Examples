variable "azurerm_rg_name" {
  default = "RG_DP_ACA"
}
variable "azurerm_rg_location" {
  default = "westus"
}

variable "az_log_analytics_workspace" {
  default = "aca-log-analytics"
}

variable "az_container_app_env" {
  default = "aca-app-env"
}

variable "az_container_app_name" {
  default = "aca-app"
}

variable "az_container_app_container_name" {
  default = "aca-app-container01"
}
 