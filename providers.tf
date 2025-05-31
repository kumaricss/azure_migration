terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.40.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "5c23eced-6964-4176-8af9-057634d3fa78"
  #client_id       = "6444d190-016b-4c63-a12f-de71ba3c0297"
  #client_secret   = "3TO8Q~QX1p08I4bqocFcQYyS25C3UmgpUZcDjc~X"
  #tenant_id       = "d52c9ea1-7c21-47b1-82a3-33a74b1f74b8"
  features {}
}
