#variables del modulo iis
variable "name" {
    type = string
    default = "iis"
}

variable "virtual_machine_id" {
  type = string
  description = "The ID of the virtual machine to install the extension on"
  default = ""
}