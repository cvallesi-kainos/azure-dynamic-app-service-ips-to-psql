output "psql_id" {
  value = azurerm_postgresql_server.main.id
}

output "psql_fqdn" {
  value = azurerm_postgresql_server.main.fqdn
}

output "psql_identity" {
  value = azurerm_postgresql_server.main.identity
}
