variable "prefix" {
  type        = string
  description = "Prefijo para identificar al grupo"
}
variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_location" {
  type = string
  description = "Localizacción del grupo de recurso."
}
variable "prefix" {
  type        = string
  default     = "win-vm-iis"
  description = "Prefix of the resource name"
}