variable "location" {
  description = "Azure region to deploy resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

# Network Variables
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_prefixes" {
  description = "CIDR blocks for the subnet"
  type        = list(string)
}

# ACR Variables
variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "SKU for the Container Registry"
  type        = string
  default     = "Basic"
}

variable "acr_admin_enabled" {
  description = "Enable admin access to ACR"
  type        = bool
  default     = false
}

# AKS Variables
variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for AKS"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "Size of the AKS agent VMs"
  type        = string
  default     = "Standard_B2s"
}

# Common Tags
variable "tags" {
  description = "Map of tags to apply to resources"
  type        = map(string)
}
