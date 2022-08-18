
variable "node_count" {
  description = "Number of nodes to deploy"
}

variable "dns_prefix" {
  description = "DNS prefix for AKS cluster"
}

variable cluster_name {
  description = "Name of the AKS cluster"
}

variable subnet_name {
  description = "Subnet id where the nodes will be deployed"
}

variable vnet_name {
  description = "VNET id where the nodes will be deployed"
}

variable subnet_cidr {
  description = "CIDR range of the subnet"
}

variable kubernetes_version {
  description = "Version of the Kubernetes cluster"
}

variable "vm_size" {
  description = "Size of VM to use for nodes"
}

variable "os_disk_size_gb" {
  description = "Size of the OS disk to attach to the nodes"
}

variable "max_pods" {
  description = "Maximum number of pods that can run on a single node"
}

variable "address_space" {
  description = "The address space that is used the virtual network"
}

variable "min_count" {
  description = "Minimum Node Count"
}

variable "max_count" {
  description = "Maximum Node Count"
}

variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
}

variable "location" {
  type = string
  description = "Location of the resource group"
}

variable "default_pool_name" {
  description = "Name for the agent pool profile"
}

variable "default_pool_type" {
  description = "Type of the agent pool"
}

variable "enable_auto_scaling" {
  description = "Variable to enable auto scaling"
}

variable "network_plugin" {
  description = "Network plugin to be used"
}

variable "network_policy" {
  description = "Network policy to be used"
}














