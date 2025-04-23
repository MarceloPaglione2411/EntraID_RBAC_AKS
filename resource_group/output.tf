output "rg_aks" {
    value = azurerm_resource_group.aks.name  
}

output "location" {
  value = azurerm_resource_group.aks.location
}
