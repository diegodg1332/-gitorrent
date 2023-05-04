variable "prefix" {
  type    = string
  default = "myPrefix"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "os_publisher" {
  type    = string
  default = "MicrosoftWindowsServer"
}

variable "os_offer" {
  type    = string
  default = "WindowsServer"
}

variable "os_sku" {
  type    = string
  default = "2022-datacenter-azure-edition"
}

variable "os_version" {
  type    = string
  default = "latest"
}

variable "vm_size" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "os_disk_name" {
  type    = string
  default = "myOsDisk"
}

variable "os_disk_caching" {
  type    = string
  default = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  type    = string
  default = "Premium_LRS"
}
