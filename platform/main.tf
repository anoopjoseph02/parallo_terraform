# Cluster Resource Group

module "aks_resource_group" {
  source                      = "../modules/aks_rg"
  resource_group_name         = var.resource_group_name
  location                    = var.location
}

# AKS Cluster Network

module "aks_network" {
  source              = "../modules/aks_network"
  subnet_name         = var.subnet_name
  vnet_name           = var.vnet_name
  subnet_cidr         = var.subnet_cidr
  address_space       = var.address_space
  resource_group_name = module.aks_resource_group.resource_group
  location            = module.aks_resource_group.location
}

# AKS Cluster

module "aks_cluster" {
  source                   = "../modules/aks_cluster"
  cluster_name             = var.cluster_name
  dns_prefix               = var.dns_prefix
  kubernetes_version       = var.kubernetes_version
  node_count               = var.node_count
  min_count                = var.min_count
  max_count                = var.max_count
  os_disk_size_gb          = var.os_disk_size_gb
  max_pods                 = var.max_pods
  vm_size                  = var.vm_size
  default_pool_name        = var.default_pool_name
  default_pool_type        = var.default_pool_type
  enable_auto_scaling      = var.enable_auto_scaling
  network_plugin           = var.network_plugin
  network_policy           = var.network_policy   
  vnet_subnet_id           = module.aks_network.aks_subnet_id
  resource_group_name = module.aks_resource_group.resource_group
  location            = module.aks_resource_group.location
}

# Container Registry

module "aks_container_registry" {
  source                      = "../modules/aks_registry"
  registry_name               = "paralloregistry"
  resource_group_name = module.aks_resource_group.resource_group
  location            = module.aks_resource_group.location
}







