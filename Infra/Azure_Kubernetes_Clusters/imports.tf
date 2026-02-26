import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-DSCU-SecCluster-03"
}
import {
  to = azurerm_resource_group.ai-services
  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-AI-Service-Resources"
}

import {
  to = azurerm_resource_group.rg-app-service
  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-DSCU-app-service-00003"
}

import {
  to = azurerm_kubernetes_cluster.aks
  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-DSCU-SecCluster-03/providers/Microsoft.ContainerService/managedClusters/AKS-DSCU-SecCluster"
}

import {
  to = azurerm_cognitive_account.ai-service-OpenAIs
  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01"
}

#import {
#  to = azurerm_cognitive_deployment.oai-model-deployment-01
#  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01/deployments/gpt-4-deployment-01"
#}


#----------------- Not required for import 
#import {
#  to = azurerm_cognitive_deployment.models
#  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01/deployments/gpt-4-o"
#}
#import {
#  to = azurerm_cognitive_deployment.models
#  id = "/subscriptions/3baeba7a-1c88-4266-91ef-7a9738a6dfef/resourceGroups/RG-AI-Service-Resources/providers/Microsoft.CognitiveServices/accounts/oai-service-account-01/deployments/gpt-4o-mini"
#}