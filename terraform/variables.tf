variable "azure_new_resource_group" {
  type        = map(string)
  default     = {}
  description = "Contains main properties about new resource group holding all resources"
}

variable "azure_new_resource_group_tags" {
  type        = map(string)
  default     = {}
  description = "Tags to categorize new resource group and other resources within it"
}

variable "prefix" {
  type        = string
  description = "Prefix to include in resource names for making them more consistent"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B2s"
  description = "Size for Virtual Machine"
}