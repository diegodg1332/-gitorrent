resource "azurerm_resource_group" "rg" {
    name = "grupo de recursos"
    location = "eu-north"
}



#  Creación de la red virtual 
resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "${vn-1}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.
  resource_group_name = azurerm_resource_group.rg.
}

