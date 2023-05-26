terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.50.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "ce1425fc-f3d9-4afa-a1df-9786245f41fc"
  client_secret   = "JoF8Q~~."
  tenant_id       = "459865f1-a8aa-450a-baec-8b47a9e5c904"
  subscription_id = "6e4924ab-b00c-468f-ae01-e5d33e8786f8"
}

# Terraform backend state
terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-centralindia"
    storage_account_name = "csg10032000825eeb72"
    container_name       = "tfstate"
    key                  = "devvm.terraform.tfstate"
  }
}

module "dev" {
  
  source = "../"
  resource_group_name = "dev-group"
  location = "eastus"
  storage_acount_name = "saanvikitdevsa"
  virtual_network_name = "dev-vnet"
  virtual_network_address = ["10.0.0.0/24"]
  subnet_name = "dev-snet"
  subnet_address = ["10.0.0.0/24"]
  publicip_name = "dev-pubip"
  nsg_name = "dev-nsg"
  nic_name = "dev-nic"
  virtual_machine_name = "dev-vm"
  virtual_machine_size = "Standard_ds1_v2"
  adminUser = "azureuser"
  adminPassword = "Azuredevops@12345"
}