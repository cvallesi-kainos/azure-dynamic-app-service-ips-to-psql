output "app_id" {
  value = azurerm_linux_web_app.main.id
}

output "app_hostname" {
  value = azurerm_linux_web_app.main.default_hostname
}

output "app_ips_pool" {
  value = azurerm_linux_web_app.main.possible_outbound_ip_addresses
}
