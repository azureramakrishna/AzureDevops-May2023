variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  description = "Location for the resourcegroup"
}

variable "storage_acount_name" {
  type        = string
  description = "Name of the storage account"
}

variable "count_value" {
  type        = number
}
