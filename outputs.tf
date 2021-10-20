output "vnetRGname" {
  value       = azurerm_virtual_network.vnet.resource_group_name
  description = "the name of the resource group"
}
output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "the name of the primary virtual network"
}

output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "the id of the primary virtual network"
}