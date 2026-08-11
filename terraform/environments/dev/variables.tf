variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network."
  type        = string
}

variable "address_space" {
  description = "CIDR blocks assigned to the Virtual Network."
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnet configurations."

  type = map(object({
    address_prefixes = list(string)
  }))
}

variable "tags" {
  description = "Tags applied to Azure resources."
  type        = map(string)
  default     = {}
}

variable "aks_nsg_name" {
  description = "Name of the AKS subnet NSG."
  type        = string
}

variable "app_gateway_nsg_name" {
  description = "Name of the Application Gateway subnet NSG."
  type        = string
}

variable "private_endpoints_nsg_name" {
  description = "Name of the Private Endpoint subnet NSG."
  type        = string
}

variable "acr_name" {
  description = "Globally unique name of the Azure Container Registry."
  type        = string
}