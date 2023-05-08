
# variable de la info maquina virtual
variable "name" {
type = 
default = 
description = estes es el nombre de la maquina

}
# variable de nombre de usuario admin de la maquina
variable "admin_username" {
type = string
default = 
description = 
}
#localizacion del grupo de recursos
variable "resource_group_location" {
  type    = string
  default = "eu-north"
}
#nombre del grupo de recursos 
variable "resource_group_name" {
  type    = string
  default = 
} 

# variable de la localizacion de la maquina
variable "location" {
    type = string
    default = eu-north
}

# variable del password de la máquina
variable "password" {
    type = string
   
}

# varibles del os_disk de la maquina virtual
variable "os_disk_name" {
  type    = string
  default = 
}

variable "os_disk_caching" {
  type    = string
  default = 
}

variable "os_disk_storage_account_type" {
  type    = string
  default = 
}
####--------------------------------------------------###

# variables para el "source_image_references"
variable "image_publisher" {
  type    = string
  default = "MicrosoftWindowsServer"
}

variable "image_offer" {
  type    = string
  default = "WindowsServer"
}

variable "image_sku" {
  type    = string
  default = "2022-datacenter-azure-edition"
}

variable "image_version" {
  type    = string
  default = "latest"
}