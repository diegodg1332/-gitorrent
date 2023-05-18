resource "azurerm_storage_account" "my_storage_account" {
  name                     = var.nombre_store_account
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = var.nombre_grupo
  account_tier             = "Standard"
  account_replication_type = "LRS"
  }