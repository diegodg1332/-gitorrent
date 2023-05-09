terraform {
  required_version = ">= 3.0"
}
resource "azurerm_windows_virtual_machine" {
  id = ""
  main = ""

}

resource "azurerm_virtual_machine_extension" "web_server_install" {
  name                       = "${var.name}-wsi"
  virtual_machine_id         = azurerm_windows_virtual_machine.main.id
  publisher                  = "Microsoft.Compute"
  type                       = "CustomScriptExtension"
  type_handler_version       = "1.8"
  auto_upgrade_minor_version = true

  settings = <<SETTINGS
    {
      "commandToExecute": "powershell -ExecutionPolicy Unrestricted Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools"
    }
  SETTINGS
}