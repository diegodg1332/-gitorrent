resource "azurerm_public_ip" "my_terraform_public_ip" {
  name                = var.nombre_IP
  location            = var.location
  resource_group_name = var.nombre_grupo_recurso
  allocation_method   = "Dynamic"
}