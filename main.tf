#--------------------------------------------*--------------------------------------------
# Module: Azure Vritual Network Peering
#--------------------------------------------*--------------------------------------------

resource "azurerm_virtual_network_peering" "source-to-destination" {
  provider = azurerm.src
  name                         = format("PE-%s-to-%s", var.vpeer_src_prefix, var.vpeer_dest_prefix)
  resource_group_name          = var.dest_resource_group_name
  virtual_network_name         = var.src_name
  remote_virtual_network_id    = var.dest_virtual_network_id
  allow_virtual_network_access = var.src_virtual_network_access_allowed
  allow_forwarded_traffic      = var.src_forwarded_traffic_allowed
  allow_gateway_transit        = var.src_gateway_transit_allowed
  use_remote_gateways          = var.use_src_remote_gateway
}

resource "azurerm_virtual_network_peering" "destination-to-source" {
  provider = azurerm.dst
  name                         = format("PE-%s-to-%s", var.vpeer_dest_prefix, var.vpeer_src_prefix)
  resource_group_name          = var.src_resource_group_name
  virtual_network_name         = var.dest_name
  remote_virtual_network_id    = var.src_virtual_network_id
  allow_virtual_network_access = var.dest_virtual_network_access_allowed
  allow_forwarded_traffic      = var.dest_forwarded_traffic_allowed
  allow_gateway_transit        = var.dest_gateway_transit_allowed
  use_remote_gateways          = var.use_dest_remote_gateway
}


# end
#--------------------------------------------*--------------------------------------------