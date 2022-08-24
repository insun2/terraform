
resource "azurerm_storage_account" "storage-account" {
  name                     = "${var.tags.Environment}-${var.name}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public

  tags = merge(var.tags, { Name = "${var.tags.Environment}-${var.name}"})
}

resource "azurerm_storage_container" "storage-container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.storage-account.name
  container_access_type = "blob"
}