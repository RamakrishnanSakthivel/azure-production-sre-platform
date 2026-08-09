variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region where the NSGs will be created."
  type        = string
}

variable "tags" {
  description = "Tags applied to the NSGs."
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