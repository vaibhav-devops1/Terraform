
resource "azurerm_public_ip" "example" {
    for_each = var.publicip
  name                = each.value.publicipname
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Static"
 sku                 = "Standard"

}