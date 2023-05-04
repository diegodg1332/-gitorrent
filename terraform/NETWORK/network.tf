resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.prefix}-vnet1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = var.azure_new_resource_group_tags
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.prefix}-vnet1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = var.azure_new_resource_group_tags
}

resource "azurerm_public_ip" "publicip1" {
  name                = "${var.prefix}-publicip1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  tags                = var.azure_new_resource_group_tags
}

