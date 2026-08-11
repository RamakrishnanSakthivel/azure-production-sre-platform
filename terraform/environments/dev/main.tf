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

resource "azurerm_subnet_network_security_group_association" "aks" {
  subnet_id                 = module.network.subnet_ids["aks"]
  network_security_group_id = module.nsg.aks_nsg_id
}

resource "azurerm_subnet_network_security_group_association" "app_gateway" {
  subnet_id                 = module.network.subnet_ids["app-gateway"]
  network_security_group_id = module.nsg.app_gateway_nsg_id
}

resource "azurerm_subnet_network_security_group_association" "private_endpoints" {
  subnet_id                 = module.network.subnet_ids["private-endpoints"]
  network_security_group_id = module.nsg.private_endpoints_nsg_id
}

module "container_registry" {
  source = "../../modules/container-registry"

  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  acr_name = var.acr_name
  tags     = var.tags
}