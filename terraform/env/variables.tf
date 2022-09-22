variable prefix {
  type        = string
  description = "A unique prefix to identify these resources"
}

variable environment {
  type        = string
  default     = "env"
}

variable resource_group_name {
  type        = string
  default     = "test"
}

variable app_service_name {
  type        = string
  default     = "app-test"
}

variable "psql_admin_password" {
  type = string
  sensitive   = true
}