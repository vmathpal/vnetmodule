terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.56.0"
    }
  }
}

provider "azurerm" {
  features{}
  #version = "2.56.0"
}


resource "azurerm_resource_group" "resource_grp" {
  name = var.resource_group
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
    name = "${var.resource_prefix}-vnet"
    location = var.location
    resource_group_name = azurerm_resource_group.resource_grp.name
    address_space = [var.vnet_address_space]
    tags = {
      "owner" = "engg"
    }
}

resource "azurerm_subnet" "vnet-subnets" {
  for_each = var.subnets
  name = "${var.resource_prefix}-${each.key}-subnet"
  resource_group_name = azurerm_resource_group.resource_grp.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = [each.value]
}