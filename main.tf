


module "vnet" {
  source = "./module"
  resource_group = var.resource_group
  location = var.location
  subnets = var.subnets
}

# output "vnet" {
# 	value = module.vnet.azurerm_subnet.vnet-subnets.name
# }
  # resource_group = var.resource_group
  # name = "${var.resource_prefix}-vnet"
  # location = var.location
  # resource_group_name = azurerm_resource_group.resource_grp.name
  # address_space = [var.vnet_address_space]



# resource "azurerm_network_interface" "vnet-nics" {
#   #for_each = var.vms
#   for_each = var.subnets 
#   name = "${var.resource_prefix}-${each.key}-nic"
#   location = var.location
#   resource_group_name = azurerm_resource_group.resource_grp.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.vnet-subnets[each.key].id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_windows_virtual_machine" "az_vm" {
#   for_each              = var.subnets
#   name                  = "${var.resource_prefix}-${each.key}-vm"
#   # "${var.resource_prefix}}-${each.key}-vm"
#   #count                = var.test_server_count
#   location              = var.location  
#   resource_group_name   = azurerm_resource_group.resource_grp.name
#   #availability_set_id  = azurerm_availability_set.test_aset01.id 
#   network_interface_ids = [azurerm_network_interface.vnet-nics[each.key].id]
#   size                  = "Standard_D2_v3"
#   admin_username        = "webserver"
#   admin_password        = "Passw0rd1234"

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2016-Datacenter"
#     version   = "latest"
#   }
# }
# terraform {
#   backend "azurerm" {
#     # storage_account_name="<<storage_account_name>>" #OVERRIDE in TERRAFORM init
#     # access_key="<<storage_account_key>>" #OVERRIDE in TERRAFORM init
#     # key="<<env_name.k8s.tfstate>>" #OVERRIDE in TERRAFORM init
#     # container_name="<<storage_account_container_name>>" #OVERRIDE in TERRAFORM init
#   }
# }
