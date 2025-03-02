#--------------------------------------------*--------------------------------------------
# Module: Azure Vritual Network Peering - Versions
#--------------------------------------------*--------------------------------------------

terraform {
  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "> 4.2.0"
      configuration_aliases = [azurerm.src, azurerm.dst]
    }
  }
}

# end
#--------------------------------------------*--------------------------------------------