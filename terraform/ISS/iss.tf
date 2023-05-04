resource "azurerm_virtual_machine_extension" "iis-windows-vm-extension" {
  depends_on           = [azurerm_windows_virtual_machine.vm1]
  name                 = "${var.prefix}-vm1-extension"
  virtual_machine_id   = azurerm_windows_virtual_machine.vm1.id
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"
  settings             = <<SETTINGS
    { 
      "commandToExecute": "powershell Install-WindowsFeature -name Web-Server -IncludeManagementTools;"
    } 
  SETTINGS
  tags                 = var.azure_new_resource_group_tags
}