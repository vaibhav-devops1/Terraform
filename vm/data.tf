data "azurerm_network_interface" "example" {
    for_each = var.vm
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}
