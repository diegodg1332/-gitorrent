# Definición de variables
variable "location" {
type = string
}



variable "resource_group_name" {
type = string
}



variable "address_space" {
type = list(string)
}



variable "subnet_name" {
type = string
}




variable "subnet_address_prefix" {
type = string
}

#seguridad y reglas - jaime
variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
}

variable "nsg_location" {
  type        = string
  description = "Location of the Network Security Group"
}

variable "nsg_resource_group_name" {
  type        = string
  description = "Name of the Resource Group where the Network Security Group will be created"
}

variable "rdp_port" {
  type        = number
  description = "RDP port number"
 }

variable "web_port" {
  type        = number
  description = "Web port number"
 }
