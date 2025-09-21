resource "azurerm_virtual_network" "vnet" {
  depends_on          = [azurerm_resource_group.rg1]
  name                = "vnet_test"
  location            = "West Europe"
  resource_group_name = "rg_practice"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}