

resource "azurerm_resource_group" "rg" {
    location = var.resource_group_location
    name     = "${random_pet.prefix.id}-rg"
}
# Creación de máquina virtual en azure con windows
resource "azurerm_windows_virtual_machine" "MaquinaVirtual" {
    name                   = "${var.name}" #llamada a variable que hay que definir en el doc variables.tf
    admin_username         = var.admin_username
    admin_password         = var.admin_password
    location               = azurerm_resource_group.rg.location
    resource_group_name    = azurerm_resource_grouprg.name
    network_interface_ids  = [azurerm_network_interface.my_terraform_nic.id]#esto no se que es
    size                   = "Standard_DS1_v2"

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
