terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = ""

}

resource "azurerm_resource_group" "meripyaaribeti" {
  name     = "rg_megha_hitesh_1"
  location = "East US"
}

resource "azurerm_storage_account" "beti" {
  name                     = "hmracc1"
  location                 = azurerm_resource_group.meripyaaribeti.location
  resource_group_name      = azurerm_resource_group.meripyaaribeti.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.meripyaaribeti]
}

