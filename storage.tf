resource "azurerm_resource_group" "storage-account-rg" {
  name     = var.sa_resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "backend_sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.sa_resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
resource "azurerm_storage_container" "backend_sa_container" {
  name                  = "${var.project_id}-tfstate"
  storage_account_name  = azurerm_storage_account.backend_sa.name
  container_access_type = "private"
}