
# Use the existing resource group
data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

# Use the existing VNET
data "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  resource_group_name = data.azurerm_resource_group.example.name
}

# Use the existing subnet
data "azurerm_subnet" "example" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.example.name
  resource_group_name  = data.azurerm_resource_group.example.name
}

# Use the existing keyvault
data "azurerm_key_vault" "example" {
  name                = "saanvikitkv"
  resource_group_name = "backup-group"
}

data "azurerm_key_vault_secret" "example" {
  name         = "VirtualMachinePassword"
  key_vault_id = data.azurerm_key_vault.example.id
}



output "id" {
  value = data.azurerm_resource_group.example.id
}

output "virtual_network_id" {
  value = data.azurerm_virtual_network.example.id
}

output "subnet_id" {
  value = data.azurerm_subnet.example.id
}

output "vault_uri" {
  value = data.azurerm_key_vault.example.vault_uri
}

