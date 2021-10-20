terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.12"
    }
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = format("%s%s%s%s%s", "vnet_", var.name, var.orgname, var.enviro, var.prjnum)
  location            = var.location
  resource_group_name = var.rgname

  address_space = var.address_space #["192.168.145.0/24"]
  dns_servers   = var.dns_servers #["8.8.8.8", "8.8.4.4"]

  tags = {
    environment   = var.enviro
  }
}