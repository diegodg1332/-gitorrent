name = "maquina-virtual"
location = "eu-north"
resource_group_name = "grupo-de-recursos"
vm_name = "vm-1"
size = "Standard_D2_v3"
admin_username = "azureuser"
password = "12345"

#Opciones de disco de la máquina virtual
os_disk_name = "vmdisk"
os_disk_caching = "ReadWrite"
os_disk_storage_account_type = "Premium_LRS"

# fuente de las imagenes de la maquina virtual " source_image_reference"
source_image_publisher = "MicrosoftWindowsServer"
source_image_offer = "WindowsServer"
source_image_sku = "2022-datacenter-azure-edition"
source_image_version = "latest"