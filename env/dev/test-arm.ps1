#test arm.ps1
##
az login --tenant "a23c2c3a-6efd-4ce4-8b04-645bc2552e51"
az account show -o table

##Set Variable 
$appName = "testarmapp"
$envName = "arm"
$loc = "westus"

$rgName = "rg-$appName-$envName"

#create RG
az group create --name $rgName --location $loc --tag "env-$envName" "app-$appName" "createdDate-$(Get-Date -Format yyyy-MM-dd)"
az group show --name $rgName -o table