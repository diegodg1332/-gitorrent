variable "virtual_network_name" {
  type = string
  default = "RED-de-Sergio"
}

variable "address_space" {
  type = list(string)
  default = ["10.0.0.0/16"]
}


variable "nombre_vnet" {
  type = string
  default = "Nombre de mi VNet"
}

 


 variable "mired_S" {
  type = string
  default = "IPs"
}

variable "ubicacion" {
type = string
default = ""
}

variable "nombre_IP" {

  type = string
  default = "nombre de public IP"
  
}