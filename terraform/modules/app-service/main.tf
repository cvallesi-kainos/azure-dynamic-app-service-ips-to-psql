resource "azurerm_service_plan" "main" {
  name                = "example"
  resource_group_name = local.resource_group_name
  location            = var.location
  sku_name            = var.app_plan_sku
  os_type             = "Linux"
}

resource "azurerm_linux_web_app" "main" {
  name                = var.app_service_name
  resource_group_name = local.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.main.id

  site_config {}
}