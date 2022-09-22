terraform {
  required_version = ">= 1.2.9"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.23.0"
    }
  }
}

provider "azurerm" {
  features {
    template_deployment {
      # needed when destroying app service plans with app services still inside
      delete_nested_items_during_deletion = false
    }
  }
}