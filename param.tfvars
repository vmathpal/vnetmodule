location = "westus2"
resource_group = "vibhor-hnk"
resource_prefix = "hnk"
vnet_address_space = "10.10.0.0/16"
subnets = {
    prod-sub = "10.10.0.0/24"
    dev-sub  = "10.10.1.0/24"
    GatewaySubnet = "10.10.2.0/24"
    AzureFirewallSubnet = "10.10.3.0/24"
    }
vms = {
    vm1 = "web-server-01"
    vm2 = "web-server-02"
}
