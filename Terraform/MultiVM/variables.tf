variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
  default     = "saanvikit-terraform-rg"
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
  default     = "saanvikit-vnet"
}

variable "virtual_network_address" {
  type        = list
  default     = ["192.168.0.0/24"]
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
  default     = "saanvikit-snet"
}

variable "subnet_address" {
  type        = list
  default     = ["192.168.0.0/24"]
}

variable "publicip_name" {
  type        = string
  description = "Name of the publicip"
  default     = "saanvikit-pubip"
}

variable "nsg_name" {
  type        = string
  description = "Name of the NSG"
  default     = "saanvikit-nsg"
}

variable "nic_name" {
  type        = string
  description = "Name of the NIC"
  default     = "saanvikit-nic"
}

variable "virtual_machine_name" {
  type        = string
  description = "Name of the VM"
  default     = "saanvikit-vm"
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

variable "count_value" {
  type        = number
  default     = 5
}