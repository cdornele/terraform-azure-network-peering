#--------------------------------------------*--------------------------------------------
# Example - Simple Virtual Network Peering
#--------------------------------------------*-------------------------------------------

provider "azurerm" {
  subscription_id = "XXXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXXXX"
  features {}
}

provider "azurerm" {
  alias           = "dst"
  subscription_id = "YYYYYYYY-YYYY-YYYY-YYYY-YYYYYYYYYYYY"
  features {}
}




resource "azurerm_resource_group" "example" {
  name     = "example-resources-02"
  location = "eastus"
}

resource "azurerm_virtual_network" "example01" {
  name                = "example-vnet-01"
  address_space       = ["10.0.1.0/24"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example01" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example01.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_virtual_network" "example02" {
  name                = "example-vnet-02"
  address_space       = ["10.0.10.0/24"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example02" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example02.name
  address_prefixes     = ["10.0.10.0/24"]
}

module "peering" {
  source = "../../"
  providers = {
    azurerm.src = azurerm
    azurerm.dst = azurerm.dst
  }
  vpeer_src_prefix = "example-vnet-01"
  vpeer_dest_prefix = "example-vnet-02"
  dest_name = "example-vnet-02"
  src_name = "example-vnet-01"
  dest_virtual_network_id = azurerm_virtual_network.example02.id
  src_virtual_network_id = azurerm_virtual_network.example01.id
  dest_resource_group_name =  azurerm_resource_group.example.name
  src_resource_group_name = azurerm_resource_group.example.name
  dest_virtual_network_access_allowed =  true
  dest_forwarded_traffic_allowed = true
  dest_gateway_transit_allowed = false
  use_dest_remote_gateway = false
  src_virtual_network_access_allowed =  true
  src_forwarded_traffic_allowed = true
  src_gateway_transit_allowed = false
  use_src_remote_gateway = false
}