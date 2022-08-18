resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                = var.default_pool_name
    node_count          = var.node_count
    vm_size             = var.vm_size
    os_disk_size_gb     = var.os_disk_size_gb
    vnet_subnet_id      = var.vnet_subnet_id
    max_pods            = var.max_pods
    type                = var.default_pool_type
    enable_auto_scaling = var.enable_auto_scaling
    min_count           = var.min_count
    max_count           = var.max_count

    tags = {
       "Environment" = "Parallo-dev"
    }
  }

  network_profile {
    network_plugin     = var.network_plugin
    network_policy     = var.network_policy
  }

  identity {
    type = "SystemAssigned"
  }

}



