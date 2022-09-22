variable resource_group_name {
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

variable "app_plan_name" {
  type        = string
  default     = "app-plan-test"
}

variable "app_plan_sku" {
  type        = string
  default     = "P1v2"
}

variable "app_service_name" {
  type        = string
}