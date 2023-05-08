
resource "azurerm_resource_group" "g3" {
  location = var.resource_group_location
  name     = "${random_pet.prefix.id}-g3"
}

resource "azurerm_network_interface" "grupo3_nic" {
  name                = "${prefix}-nic"
  location            = azurerm_resource_group.g3.location
  resource_group_name = azurerm_resource_group.g3.name

  ip_configuration {
    name                          = "configuracion_del_nic"
    subnet_id                     = azurerm_subnet.my_terraform_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.my_terraform_public_ip.id
  }
}