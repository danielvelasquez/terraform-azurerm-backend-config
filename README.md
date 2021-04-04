# terraform-azurerm-backend-config

## Description

Basic module to provision resources to configure a backend for terraform tfstate files in a storage account
## Usage 

~~~

module "backend" {
  source                       = "github.com//danielvelasquez/terraform-azurerm-backend-config?ref=v21.04.041955"
  subscription_id              = var.subscription_id
  backend_client_id            = var.backend_client_id
  backend_client_secret        = var.backend_client_secret
  location                     = var.location
  sa_resource_group_name       = var.resource_group_name
  project_id                   = var.project_id
  tenant_id                    = var.tenant_id
  storage_account_name         = var.storage_account_name 
}

~~~