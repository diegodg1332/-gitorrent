resource "azurerm_virtual_network" "my_vnet" {
name = "${random_pet.prefix.id}-virtualnetwork"
address_space = var.address_space
location = var.location
resource_group_name = var.resource_group_name



subnet {
name = var.subnet_name
address_prefix = var.subnet_address_prefix
 }
}