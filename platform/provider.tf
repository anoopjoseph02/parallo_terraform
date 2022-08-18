terraform {
  backend "azurerm" {
    storage_account_name     = "paralloterraformstorage"
    container_name           = "tfstate"
    key                      = "terraform.tfstate"
    #access_key               = "<your_storage_account_access_key>"
    access_key               = "/aL2unHCjH2v11fqXopdQbDrMJ2E+BrxxmvqMcc5gZRXqwvIL/k5zU8gDs60U+dsyiQrO2dPNgDu+AStpVLudg=="
  }
}

provider "azurerm" {
  version = "~> 3.18"
  features {}
}
