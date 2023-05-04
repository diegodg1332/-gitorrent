variable "vnet" {
    type = string 
    default = "" 
    description = "nombre de la virtual network"
}

variable "address_space" {
    type = string
    default = "10.0.0.0"
    description = " ip de la virtual network"
}