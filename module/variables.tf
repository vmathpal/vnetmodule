# variable client_id {}
# variable client_secret {}
# variable ssh_public_key {}

variable "location" {
  type = string
  default = "westus2"
}

variable "resource_group" {
  type = string
  default = "rg-westus2"
}

variable "resource_prefix" {
  type = string
  default = "hnk"
}

variable "vnet_address_space" {
  type = string
  default = "10.10.0.0/16"
  
}

variable "subnets" {
  type = map
   default = {
    prod-sub = "10.10.0.0/24"
    dev-sub  = "10.10.1.0/24"
    } 
}

variable "vms" {
     type = map
  default =    {
    vm1 = "web-server-01"
    vm2 = "web-server-02"
}
}