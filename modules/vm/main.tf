
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.rg_Name
}

resource "azurerm_subnet" "sub" {
  name                 = var.sub
  resource_group_name  = var.rg_Name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_network_interface" "nic" {
  name                = var.nicc
  location            = var.location
  resource_group_name = var.rg_Name

  ip_configuration {
    name                          = var.ic
    subnet_id                     = azurerm_subnet.sub.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "tfvm" {
  
  name                = var.vm_name
  resource_group_name = var.rg_Name
  location            = var.location
  admin_username = var.admin_username
  admin_password = var.admin_password
  size           = var.size
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
