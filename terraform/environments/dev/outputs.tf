output "resource_group_name" {
  description = "Name of the Dev Resource Group."
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "ID of the Dev Resource Group."
  value       = module.resource_group.resource_group_id
}

output "vnet_name" {
  description = "Name of the Dev Virtual Network."
  value       = module.network.vnet_name
}

output "vnet_id" {
  description = "ID of the Dev Virtual Network."
  value       = module.network.vnet_id
}

output "subnet_ids" {
  description = "Map of Dev subnet IDs."
  value       = module.network.subnet_ids
}