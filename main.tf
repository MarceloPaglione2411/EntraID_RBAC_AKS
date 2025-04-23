module "rg_module" {
  source = "./resource_group"
  rg_name = var.rg_name
  rg_location = var.rg_location
}

module "aks_module" {
  source = "./aks"
  rg_name = module.rg_module.rg_aks
  rg_location = module.rg_module.location
  aks_name = var.aks_name
  vm_size = var.vm_size
  name_nodepool = var.name_nodepool
  dns_aks = var.dns_aks
}
