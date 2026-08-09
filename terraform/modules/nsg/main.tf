resource "azurerm_network_security_group" "aks" {
  name                = var.aks_nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_network_security_group" "app_gateway" {
  name                = var.app_gateway_nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_network_security_group" "private_endpoints" {
  name                = var.private_endpoints_nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}