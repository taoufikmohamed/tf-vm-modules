terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}
resource "azurerm_resource_group" "rg" {
  name     = var.rg_Name
  location = var.location

}
module "winvm" {
  source   = "./modules/vm/"
  rg_Name  = var.rg_Name
  location = var.location
  vm_name  = var.vm_name
  size     = var.size
  sub      = var.sub
  ic             = var.ic
  vnet           = var.vnet
  admin_username = var.admin_username
  admin_password = var.admin_password
}