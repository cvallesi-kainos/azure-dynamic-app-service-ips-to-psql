resource "azurerm_postgresql_server" "main" {
  name                             = var.psql_server_name
  location                         = var.location
  resource_group_name              = local.resource_group_name
  sku_name                         = var.psql_sku
  storage_mb                       = var.psql_storage_size
  version                          = var.psql_version
  ssl_enforcement_enabled          = var.psql_ssl_enabled
  administrator_login              = var.psql_admin_username
  administrator_login_password     = var.psql_admin_password
  public_network_access_enabled    = true
}
