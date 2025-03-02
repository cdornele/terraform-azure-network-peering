#--------------------------------------------*--------------------------------------------
# Module: Azure Vritual Network Peering - Output
#--------------------------------------------*--------------------------------------------

output "id" {
  description = "Source Virtual network peering id."
  value       = azurerm_virtual_network_peering.source-to-destination.id
}

output "name" {
  description = "Source Virtual network peering name."
  value       = azurerm_virtual_network_peering.source-to-destination.name
}
output "dest_id" {
  description = "Destination Virtual network peering id."
  value       = azurerm_virtual_network_peering.destination-to-source.id
}

output "dest_name" {
  description = "Destination Virtual network peering name."
  value       = azurerm_virtual_network_peering.destination-to-source.name
}

output "resource" {
  description = "Virtual network peering resource object."
  value       = azurerm_virtual_network_peering.source-to-destination
}

output "resource_dest" {
  description = "Destination Virtual network peering resource object."
  value       = azurerm_virtual_network_peering.destination-to-source
}

#--------------------------------------------*--------------------------------------------