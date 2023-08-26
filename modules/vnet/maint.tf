
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  address_space       = [var.address_space]
  location            = var.location
  resource_group_name = var.rg_Name
}

resource "azurerm_subnet" "sub" {
  name                 = var.sub
  resource_group_name  = var.rg_Name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.address_prefixes]
  }
//    output "subnet_id" {
 // value = azurerm_subnet.sub.id
//}
