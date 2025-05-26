output "vnet_id" {
  description = "ID of the Virtual Network"
  value       = module.network.vnet_id
}

output "subnet_id" {
  description = "ID of the subnet used by AKS"
  value       = module.network.subnet_id
}

output "acr_login_server" {
  description = "Login server URL for ACR"
  value       = module.acr.acr_login_server
}

output "acr_id" {
  description = "ID of the Azure Container Registry"
  value       = module.acr.acr_id
}

output "aks_id" {
  description = "ID of the AKS cluster"
  value       = module.aks.aks_id
}

output "kube_config" {
  description = "Raw kubeconfig for accessing the AKS cluster"
  value       = module.aks.kube_config
  sensitive   = true
}
