resource "azurerm_resource_group" "rg" {
  name     = var.azure_new_resource_group["name"]
  location = var.azure_new_resource_group["location"]
  tags     = var.azure_new_resource_group_tags
}

