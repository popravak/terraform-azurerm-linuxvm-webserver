
output "public_ip_address" {
  description = "VM public IP address"
  value       = azurerm_linux_virtual_machine.linuxvm.*.public_ip_address
}

output "vm_iface_id" {
  description = "VM interface ID"
  value       = azurerm_linux_virtual_machine.linuxvm.*.network_interface_ids[0]
}

output "ip_configuration" {
  description = "VM interface configuration"
  value       = azurerm_network_interface.iface.*.ip_configuration[0]
}

