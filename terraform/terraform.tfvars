variable "resource_group_location" {
  default     = "eastus"
  description = "Localizacción del grupo de recurso."
}

variable "prefix" {
  type        = string
  default = "grupo3"
  description = "Prefijo para identificar al grupo"
}

