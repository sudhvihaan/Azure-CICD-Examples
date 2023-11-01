# What is happening 
Here I am trying to create a CICD pipeline using Azure Devops on Azure Container Apps - it is a service like Kubernetes Service - Not AKS

# Pre-requistes - you need the resources -either create them manually on the portal or use the PS command or Azure CLI or Terraform 
```Command
RESOURCE_GROUP="rg-containerapps-azure-pipelines"
$LOCATION="westeurope"
$CONTAINERAPPS_ENVIRONMENT="aca-environment"
$CONTAINERAPPS_APP="album-backend-api"

az group create `
         --name $RESOURCE_GROUP `
         --location $LOCATION

az containerapp env create `
                --name $CONTAINERAPPS_ENVIRONMENT `
                --resource-group $RESOURCE_GROUP `
                --location $LOCATION

az containerapp create `
                --name $CONTAINERAPPS_APP `
                --resource-group $RESOURCE_GROUP `
                --environment $CONTAINERAPPS_ENVIRONMENT `
                --image mcr.microsoft.com/azuredocs/containerapps-helloworld:latest `
                --target-port 80 `
                --ingress 'external'
```

# What am I doing now ?
Well, I am using Terraform 
hmmm good What are the Steps 

#Step1 : Create a Resource Group 
resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}

#Step2 : Stored the statfile in Azure Container# Azure-CICD-Examples
