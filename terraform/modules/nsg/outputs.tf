output "aks_nsg_id" {
  description = "ID of the Network Security Group for the AKS cluster."
  value       = azurerm_network_security_group.aks.id
}

output "app_gateway_nsg_id" {
  description = "ID of the Network Security Group for the Application Gateway."
  value       = azurerm_network_security_group.app_gateway.id
}

output "private_endpoints_nsg_id" {
  description = "ID of the Network Security Group for the Private Endpoints."
  value       = azurerm_network_security_group.private_endpoints.id
}