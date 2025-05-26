location              = "East US"
resource_group_name   = "chatbot-cloudcity-rg"

vnet_name             = "chatbot-vnet"
address_space         = ["10.0.0.0/16"]
subnet_name           = "chatbot-subnet"
subnet_prefixes       = ["10.0.1.0/24"]

acr_name              = "chatbotacr123"
acr_sku               = "Basic"
acr_admin_enabled     = false

cluster_name          = "chatbot-aks"
dns_prefix            = "chatbot"
node_count            = 1
vm_size               = "Standard_B2s"

tags = {
  environment = "dev"
  owner       = "ai-chatbot"
}
