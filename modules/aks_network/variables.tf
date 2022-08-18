variable "subnet_name" {
  description = "Name of the subnet"
}

variable "vnet_name" {
  description = "Name of the vnet that this subnet will belong to"
}

variable "subnet_cidr" {
  description = "CIDR range of subnet"
}

variable "address_space" {
  description = "Network address space"
}

variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
}

variable "location" {
  type = string
  description = "Location of the resource group"
}
