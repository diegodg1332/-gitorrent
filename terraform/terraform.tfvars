#Valores de variables de red

location = "easteu"

resource_group_name = "my-resource-group"

resource_group_location = "eastus"

address_space = "10.0.0.0/16"

subnet_name = "mi subred"

subnet_address_prefix = "10.0.3.0/24"


#Valores de variables de v-machine

prefix = "grupo3"

admin_username = "usuario_de_azure"

os_publisher = "MicrosoftWindowsServer"

os_offer = "WindowsServer"

os_sku = "2022-datacenter-azure-edition"

os_version = "latest"

vm_size = "Standard_DS1_v2"

os_disk_name = "myOsDisk"

os_disk_caching = "ReadWrite"

os_disk_storage_account_type = "Premium_LRS"

#variables de security ruls
#variable "nsg_name"
nsg_name = "my-nsg"

#variable "nsg_location"
nsg_location = "eastus"

#variable "nsg_resource_group_name"
nsg_resource_group_name = "my-resource-group"

#variable "rdp_port"
rdp_port = 3389

#variable "web_port" 
web_port = 80
#valores del IIS

name = "iis"
virtual_machine_id = ""
