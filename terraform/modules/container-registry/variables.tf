variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region where ACR will be created."
  type        = string
}

variable "acr_name" {
  description = "Globally unique name of the Azure Container Registry."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the ACR."
  type        = map(string)
  default     = {}
}