# Create a Resource Group for SouthCentralUS location for SecurityCluster
resource "azurerm_resource_group" "rg" {
  name     = "RG-AKS-Wells-Fargo-Gokul-Dev-SCU-SecurityCluster-00003"
  location = "SouthCentralUS"
  tags = {
    name = "Gokul_Admin"
    phone_Number = "+91998877665544"
    email_id = "gokul@deloitte.com"
  }
}

# Create the AKS Cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "AKS-Wells-Fargo-Dev-SCU-SecurityCluster-00001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "wellfFargoaksseccluster"

  default_node_pool {
    name       = "systempool"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
    #vnet_subnet_id = azurerm_subnet.example.id
    // os_type is NOT used here
    os_sku  = "Ubuntu" 
    #os_sku     = "AzureLinux" # Use os_sku for specific Linux distro or Windows
  }

  #identity {
  #  type = "SystemAssigned"
  #}

  # Private cluster 
  private_cluster_enabled = true

  # Use "System" to let AKS manage the private DNS zone, or provide a specific ID
  private_dns_zone_id = "System" 


  #azure_active_directory_rbac {
  #  managed               = true
  #  tenant_id             = data.azurerm_client_config.current.tenant_id
  #  admin_group_object_ids = [var.aad_admin_group_object_id]
  #  azure_rbac_enabled    = true
  #}

   identity {
    type = "SystemAssigned"                       # Or "UserAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}

