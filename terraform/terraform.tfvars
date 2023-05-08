azure_new_resource_group = {
  "name"     = "jm-inn-tf-learn-vms-intro-rg"
  "location" = "westeurope"
}

azure_new_resource_group_tags = {
  "Category"    = "Terraform"
  "Subcategory" = "Learning"
  "Subject"     = "Virtual Machines"
}

variable "prefix" {
  type        = string
  default = "grupo3"
  description = "Prefijo para identificar al grupo"
}

