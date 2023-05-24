variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
  default     = "saanvikit-terraform-rg-01"
}

variable "location" {
  type        = string
  description = "Location for the resourcegroup"
  default     = "UKSouth"
}

variable "storage_acount_name" {
  type        = string
  description = "Name of the storage account"
  default     = "saanivkit20230519"
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network"
  default     = "saanvikit-vnet-01"
}

variable "virtual_network_address" {
  type        = list
  default     = ["10.0.0.0/24"]
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
  default     = "saanvikit-snet-01"
}

variable "subnet_address" {
  type        = list
  default     = ["10.0.0.0/27"]
}

variable "publicip_name" {
  type        = string
  description = "Name of the publicip"
  default     = "saanvikit-pubip-01"
}

variable "nsg_name" {
  type        = string
  description = "Name of the NSG"
  default     = "saanvikit-nsg-01"
}

variable "nic_name" {
  type        = string
  description = "Name of the NIC"
  default     = "saanvikit-nic-01"
}

variable "virtual_machine_name" {
  type        = string
  description = "Name of the VM"
  default     = "saanvikit-vm-01"
}

variable "virtual_machine_size" {
  type        = string
  description = "Size of the virtual machinie"
  default     = "Standard_Ds1_v2"
}

variable "adminUser" {
  type        = string
  default     = "azureuser"
}

variable "adminPassword" {
  type        = string
  default     = "Azuredevops@12345"
}