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