module "base" {
    source = "../modules/base"

    resource_group_name = local.resource_group_name
}

module "app-service" {
    source = "../modules/app-service"

    resource_group_name = local.resource_group_name
    app_service_name    = local.app_service_name
    
    depends_on = [
      module.base
    ]
}

module "psql" {
    source = "../modules/psql"

    resource_group_name = local.resource_group_name
    app_service_name    = local.app_service_name
    psql_admin_password = local.psql_admin_password

    depends_on = [
      module.app-service
    ]
}

output "base" {
    value   = module.base
}

output "app-service" {
    value   = module.app-service
}

output "psql" {
    value   = module.psql
}