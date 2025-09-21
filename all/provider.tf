terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d73ab938-2a60-42e2-87cd-9362d4e73029"
}

# resource "azurerm_resource_group" "rg1" {

#   name     = "rg_practice"
#   location = "West Europe"
# }

# resource "azurerm_storage_account" "stg" {
#     depends_on = [ azurerm_resource_group.rg1 ]
#   name                     = "storagetest"
#   resource_group_name      = "rg_practice"
#   location                 = "West Europe"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

# }


# resource "azurerm_virtual_network" "vnet" {
#     depends_on = [ azurerm_resource_group.rg1 ]
#   name                = "vnet_test"
#   location            = "West Europe"
#   resource_group_name = "rg_practice"
#   address_space       = ["10.0.0.0/16"]
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]
# }
# resource "azurerm_subnet" "subnet" {
#     depends_on = [ azurerm_virtual_network.vnet ]
#   name                 = "subnet1"
#   resource_group_name  = "rg_practice"
#   virtual_network_name = "vnet_test"
#   address_prefixes     = ["10.0.1.0/24"]

# }