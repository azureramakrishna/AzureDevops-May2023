variable "resource_group_name" {
  type        = string
  default     = "terraform-datasource-group"
}

variable "virtual_network_name" {
  type        = string
  default     = "terraform-datasource-vnet"
}

variable "subnet_name" {
  type        = string
  default     = "default"
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

