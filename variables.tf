variable "sa_resource_group_name" {
  description = "Resource group for storage account"
}

variable "subscription_id" {
  description = "Subscription Id"
}

variable "backend_client_id" {
  description = "Backend client id"
}

variable "backend_client_secret" {
  description = "Secret to authenticate to azure"
}

variable "tenant_id" {
  dscription = "Tenant Id"
}

variable "location" {
    default = "westeurope"
    description = "Location for provisioned resources"
}

variable "project_id" {
  description = "Project id to identify resources provisioned"
}

variable "storage_account_name" {
  description = "Name of the storage account for tf state files"
}