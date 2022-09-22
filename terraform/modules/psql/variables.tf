variable resource_group_name {
  type        = string
}

variable app_service_name {
  type        = string
}

variable "environment" {
  type        = string
  default     = "env"
}

variable "location" {
  type        = string
  default     = "uksouth"
}

variable "psql_server_name" {
  type        = string
  default     = "cvallesi-psql-test"
}

variable "psql_admin_username" {
  type = string
  default = "pw"
  sensitive   = true
}

variable "psql_admin_password" {
  type = string
  sensitive   = true
}

variable "psql_storage_size" {
  default = 5120
}

variable "psql_ssl_enabled" {
  default = true
}

variable "psql_sku" {
  default = "B_Gen5_2"
}

variable "psql_version" {
  default = "11"
}
