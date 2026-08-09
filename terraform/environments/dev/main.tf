module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "network" {
  source = "../../modules/network"

  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  vnet_name     = var.vnet_name
  address_space = var.address_space
  subnets       = var.subnets
  tags          = var.tags
}

module "nsg" {
  source = "../../modules/nsg"

  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  aks_nsg_name               = var.aks_nsg_name
  app_gateway_nsg_name       = var.app_gateway_nsg_name
  private_endpoints_nsg_name = var.private_endpoints_nsg_name

  tags = var.tags
}