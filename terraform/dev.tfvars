#modulo iis 

name = "iis"  
virtual_machine_id = "your_vm_id" 

 
#ips públicas 

nombre_IP = "192.168.0.10" 
nombre_grupo_recurso = "mi-grupo-de-recursos" 

 
# Variables de configuración de red

location = "eastus" 
resource_group_name = "mi-grupo-de-recursos" 
address_space = ["10.0.0.0/16"] 
subnet_name = "subnet-1" 
subnet_address_prefix = "10.0.1.0/24" 

# Variables de seguridad 

nsg_name = "mi-nsg" 
nsg_location = "eastus" 
nsg_resource_group_name = "mi-grupo-de-recursos" 
rdp_port = 3389 
web_port = 80 


#network 

prefix = "grupo01" 
resource_group_location = "eastus" 

 

#radom text 

nombre_store_account = "mi-cuenta-de-almacenamiento" 
nombre_grupo = "mi-grupo-de-recursos" 
virtual_network_name = "RED-de-Sergio" 
address_space = [ 

  "10.0.0.0/16" 

] 

nombre_vnet = "Nombre de mi VNet" 
mired_S = "IPs" 
ubicacion = "" 
nombre_IP = "nombre de public IP" 


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

#Vnet
nombre_vnet = "red-virtual-1"
mired_S = "10.20.0.0"
ubicacion = "EU-Nort"