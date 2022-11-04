
output "public_ip_address" {
  description = "VM public IP address"
  value = azurerm_linux_virtual_machine.linuxvm.*.public_ip_address
}

output "vm_iface_id" {
  description = "VM interface ID"
  value = azurerm_linux_virtual_machine.linuxvm.*.network_interface_ids[0]
}

output "vm_iface_config" {
  description = "VM interface configuration"
  value = azurerm_network_interface.iface.*.ip_configuration[0].name
}

/*
on .terraform\modules\linuxvm-webserver\outputs.tf line 14, in output "vm_iface_config_name":
│   14:   value = azurerm_network_interface.iface.*.ip_configuration[0].name
│     ├────────────────
│     │ azurerm_network_interface.iface is tuple with 2 elements
│
│ Can't access attributes on a list of objects. Did you mean to access attribute "name" for a specific element of the list, or across all elements of the   
│ list?
*/
