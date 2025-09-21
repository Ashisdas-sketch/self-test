resource "azurerm_storage_account" "stg" {
  depends_on               = [azurerm_resource_group.rg1]
  name                     = "storagetest"
  resource_group_name      = "rg_practice"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

}