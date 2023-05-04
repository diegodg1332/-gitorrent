# Definición de variables
variable "location" {
type = string
default = "eastus"
}



variable "resource_group_name" {
type = string
default = "my-resource-group"
}



variable "address_space" {
type = list(string)
default = ["10.0.0.0/16"]
}



variable "subnet_name" {
type = string
default = "subnet-1"
}




variable "subnet_address_prefix" {
type = string
default = "10.0.1.0/24"
}