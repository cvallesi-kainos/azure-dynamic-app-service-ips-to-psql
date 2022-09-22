locals {
  resource_group_name               = data.azurerm_resource_group.main.name
  possible_outbound_ip_address_list = data.azurerm_linux_web_app.main.possible_outbound_ip_address_list
}