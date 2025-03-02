# terraform-azure-network-peering
Azure Virtual Network Peering - Terraform Module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | > 4.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm.dst"></a> [azurerm.dst](#provider\_azurerm.dst) | > 4.2.0 |
| <a name="provider_azurerm.src"></a> [azurerm.src](#provider\_azurerm.src) | > 4.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.destination-to-source](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.source-to-destination](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dest_forwarded_traffic_allowed"></a> [dest\_forwarded\_traffic\_allowed](#input\_dest\_forwarded\_traffic\_allowed) | Controls if forwarded traffic from VMs in the remote virtual network is allowed. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#allow_forwarded_traffic-1). | `bool` | `false` | no |
| <a name="input_dest_gateway_transit_allowed"></a> [dest\_gateway\_transit\_allowed](#input\_dest\_gateway\_transit\_allowed) | Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#allow_gateway_transit-1). | `bool` | `false` | no |
| <a name="input_dest_name"></a> [dest\_name](#input\_dest\_name) | Name of the destination virtual network. | `string` | n/a | yes |
| <a name="input_dest_resource_group_name"></a> [dest\_resource\_group\_name](#input\_dest\_resource\_group\_name) | Name of the destination resource group. | `string` | n/a | yes |
| <a name="input_dest_virtual_network_access_allowed"></a> [dest\_virtual\_network\_access\_allowed](#input\_dest\_virtual\_network\_access\_allowed) | Controls if the VMs in the remote virtual network can access VMs in the local virtual network. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#allow_virtual_network_access-1). | `bool` | `false` | no |
| <a name="input_dest_virtual_network_id"></a> [dest\_virtual\_network\_id](#input\_dest\_virtual\_network\_id) | ID of the destination Virtual Network to peer. | `string` | n/a | yes |
| <a name="input_src_forwarded_traffic_allowed"></a> [src\_forwarded\_traffic\_allowed](#input\_src\_forwarded\_traffic\_allowed) | Controls if forwarded traffic from VMs in the remote virtual network is allowed. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#allow_forwarded_traffic-1). | `bool` | `false` | no |
| <a name="input_src_gateway_transit_allowed"></a> [src\_gateway\_transit\_allowed](#input\_src\_gateway\_transit\_allowed) | Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#allow_gateway_transit-1). | `bool` | `false` | no |
| <a name="input_src_name"></a> [src\_name](#input\_src\_name) | Name of the source virtual network. | `string` | n/a | yes |
| <a name="input_src_resource_group_name"></a> [src\_resource\_group\_name](#input\_src\_resource\_group\_name) | Name of the source resource group. | `string` | n/a | yes |
| <a name="input_src_virtual_network_access_allowed"></a> [src\_virtual\_network\_access\_allowed](#input\_src\_virtual\_network\_access\_allowed) | Controls if the VMs in the remote virtual network can access VMs in the local virtual network. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#allow_virtual_network_access-1). | `bool` | `false` | no |
| <a name="input_src_virtual_network_id"></a> [src\_virtual\_network\_id](#input\_src\_virtual\_network\_id) | ID of the source Virtual Network to peer. | `string` | n/a | yes |
| <a name="input_use_dest_remote_gateway"></a> [use\_dest\_remote\_gateway](#input\_use\_dest\_remote\_gateway) | Controls if remote gateways can be used on the local virtual network. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#use_remote_gateways-1). | `bool` | `false` | no |
| <a name="input_use_src_remote_gateway"></a> [use\_src\_remote\_gateway](#input\_use\_src\_remote\_gateway) | Controls if remote gateways can be used on the local virtual network. [See documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering.html#use_remote_gateways-1). | `bool` | `false` | no |
| <a name="input_vpeer_dest_prefix"></a> [vpeer\_dest\_prefix](#input\_vpeer\_dest\_prefix) | Destination prefix to use for the virtual network peering. | `string` | `"dest"` | no |
| <a name="input_vpeer_src_prefix"></a> [vpeer\_src\_prefix](#input\_vpeer\_src\_prefix) | Source prefix to use for the virtual network peering. | `string` | `"src"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dest_id"></a> [dest\_id](#output\_dest\_id) | Destination Virtual network peering id. |
| <a name="output_dest_name"></a> [dest\_name](#output\_dest\_name) | Destination Virtual network peering name. |
| <a name="output_id"></a> [id](#output\_id) | Source Virtual network peering id. |
| <a name="output_name"></a> [name](#output\_name) | Source Virtual network peering name. |
| <a name="output_resource"></a> [resource](#output\_resource) | Virtual network peering resource object. |
| <a name="output_resource_dest"></a> [resource\_dest](#output\_resource\_dest) | Destination Virtual network peering resource object. |
<!-- END_TF_DOCS -->