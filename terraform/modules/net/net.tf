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

#seguridad y reglas - jaime
resource "azurerm_network_security_group" "my_terraform_nsg" {
  name                = "${var.nsg_name}"
  location            = var.nsg_location
  resource_group_name = var.nsg_resource_group_name

  security_rule {
    name                       = "RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "${var.rdp_port}"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "web"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "${var.web_port}"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
