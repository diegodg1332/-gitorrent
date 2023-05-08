resource "azurerm_virtual_network" "my_terraform_network" {
  name                = var.nombre_vnet
  address_space       = var.mired_S
  location            = var.ubicacion
  resource_group_name = azurerm_resource_group.rg.name
}



resource "azurerm_public_ip" "my_terraform_public_ip" {
  name                = var.nombre_IP
  location            = var.ubicacion
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
}
