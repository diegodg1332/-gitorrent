resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${}-rg" #hay que difenir la varible y entender que son las instancias de azure
}
# Creación de máquina virtual en azure con windows
resource "azurerm_windows_virtual_machine" "MaquinaVirtual" {
  name               = "${var.name}-vm"
  admin_username        = "azureuser"
  admin_password        = random_password.password.result
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.my_terraform_nic.id]
  size                  = "Standard_DS1_v2"


    os_disk {
        name = "vmdisk"
        caching = "ReadWrite"
        storage_account_type = "Premium_LRS"
    }
    source_image_reference {
        publisher = "MicrosoftWindowsServer"
        offer ="WindowsServer"
        sku = "2022-datacenter-azure-edition"
        version = "latest"
    }
}
