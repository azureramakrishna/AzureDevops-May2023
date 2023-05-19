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