locals {
  resource_group_name               = format("%s-%s", var.prefix, var.resource_group_name)
  app_service_name                  = format("%s-%s", var.prefix, var.app_service_name)
  psql_admin_password               = var.psql_admin_password
}