
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

# variable de la localizacion de la maquina
variable "location" {
    type = string
    default = eu-north
}

# variable del pasword de la máquina
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