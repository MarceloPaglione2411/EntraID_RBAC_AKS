resource "azurerm_kubernetes_cluster" "my-aks" {
  name                = var.aks_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix = var.dns_aks
  
  #Vou criar 1 node pool com 1 node dentro
  default_node_pool {
    name       = var.name_nodepool
    node_count = 1
    vm_size    = var.vm_size
  }

   azure_active_directory_role_based_access_control {
    azure_rbac_enabled = true
    admin_group_object_ids = ["4a1457c9-1a62-4f39-ae25-3d360c0433c8" # Substitua Object ID do seu grupo de administradores no Azure AD
    ]
  }

  local_account_disabled = true # Desabilita contas locais do Kubernetes

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

