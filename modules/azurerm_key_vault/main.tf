resource "azurerm_key_vault" "keyvault" {
  for_each                    = var.keyvaults
  name                        = each.value.name
  location                    = each.value.location
  resource_group_name         = each.value.resource_group_name
  sku_name                    = "standard"
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  enabled_for_disk_encryption = each.value.enabled_for_disk_encryption
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Get"
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete"
    ]

    storage_permissions = [
      "Get"
    ]
  }


}
