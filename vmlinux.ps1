# Script baseado na seguinte atividade pratica do Microsoft Learn:
# https://docs.microsoft.com/en-us/learn/modules/provision-virtual-machines-azure/5-azure-virtual-machine-azure-cli

$resourceGroup = "vm-linux-groffe-rg"
$resourceVM = "vm-linux-groffe"
$location = "brazilsouth"
$uservm = "renatogroffe"
$password = "GroffTests2022!"

az account list-locations --output table

az group create --name $resourceGroup --location $location

az group list --output table

az vm create `
    --resource-group $resourceGroup `
    --name $resourceVM `
    --image UbuntuLTS `
    --generate-ssh-keys `
    --size Standard_D4s_v3 `
    --public-ip-sku Standard `
    --admin-username $uservm `
    --admin-password $password

az vm open-port --port 80 `
    --resource-group $resourceGroup `
    --name $resourceVM

az vm list-ip-addresses `
    --resource-group $resourceGroup `
    --name $resourceVM `
    --output table

# az group delete --name $resourceGroup --no-wait