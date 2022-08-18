variable "dns_prefix" {
  description = "DNS prefix name"
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
}

variable "kubernetes_version" {
  description = "Version of the Kubernetes Cluster"
}

variable "node_count" {
  description = "Number of the nodes to deploy"
}

variable "vm_size" {
  description = "VM Size to use for nodes"
}

variable "os_disk_size_gb" {
  description = "Size of the OS disk to attach to the nodes"
}

variable "vnet_subnet_id" {
  description = "VNET id where the nodes will be deployed"
}

variable "max_pods" {
  description = "Maximum number of pods that can run on a single node"
}

#Network Profile config
variable "network_plugin" {
  description = "Network plugin to be used"
}

variable "network_policy" {
  description = "Network policy to be used"
}

variable "min_count" {
  description = "Minimum Node Count"
}

variable "max_count" {
  description = "Maximum Node Count"
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

variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
}

variable "location" {
  type = string
  description = "Location of the resource group"
}







