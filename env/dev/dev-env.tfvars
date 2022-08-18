resource_group_name = "parallo-rg"

location = "northeurope"

subnet_name = "parallo-subnet"

vnet_name  = "parallo-vnet"

cluster_name = "parallo-dev"

subnet_cidr = ["10.2.32.0/21"]

address_space = "10.2.0.0/16"

network_plugin = "azure"

network_policy = "azure"

enable_auto_scaling = "true"

dns_prefix = "aks"

kubernetes_version = "1.22.6"

default_pool_name = "default"

default_pool_type = "VirtualMachineScaleSets"

node_count = 1

vm_size = "Standard_D4s_v3"

os_disk_size_gb = 256

max_pods = 30

min_count = 1

max_count = 2












