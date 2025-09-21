resource "azurerm_subnet" "subnet" {
  depends_on           = [azurerm_virtual_network.vnet]
  name                 = "subnet1"
  resource_group_name  = "rg_practice"
  virtual_network_name = "vnet_test"
  address_prefixes     = ["10.0.1.0/24"]

}