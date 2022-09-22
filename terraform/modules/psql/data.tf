data "azurerm_resource_group" "main" {
  name                = var.resource_group_name
}

data "azurerm_linux_web_app" "main" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
}