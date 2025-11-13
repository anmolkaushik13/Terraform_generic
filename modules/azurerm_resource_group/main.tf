resource "azurerm_resource_group" "resourceGroup" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
  tags = {
    owner        = each.value.tags.owner
    credit_limit = each.value.tags.credit_limit
  }
}
