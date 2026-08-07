variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be deployed."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}

variable "vnet_name" {    
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "List of CIDR blocks assigned to the Virtual Network."
  type        = list(string)
}

variable "subnets" {
  description = "A map of subnet configurations to create within the virtual network."
  
  type        = map(object({
  address_prefixes = list(string)
  }))
}   

