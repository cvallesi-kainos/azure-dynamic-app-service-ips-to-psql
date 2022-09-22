resource "azurerm_postgresql_firewall_rule" "pw_app_service_ips" {
  for_each = { for i, o in local.possible_outbound_ip_address_list: o => o }

  name                = format("pw_app_%s", replace(each.value, ".", "_"))
  resource_group_name = local.resource_group_name
  server_name         = azurerm_postgresql_server.main.name
  start_ip_address    = each.value
  end_ip_address      = each.value
}