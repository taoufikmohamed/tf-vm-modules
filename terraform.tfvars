rg_Name  = "tfrg" ## We have to change as per env
location = "westeurope"



### Win Virtual Machine Deployment
nicc             = "vm-nic"
vm_name          = "win-terra-vm"
size             = "Standard_B2s"
admin_username   = "admintfazure"
admin_password   = "passforMe!"
vnet             = "vmnet"
sub              = "subnet"
ic               = "internal"
address_prefixes = "10.0.2.0/24"
address_space    = "10.0.0.0/16"