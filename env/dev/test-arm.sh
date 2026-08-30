#test-arm.sh
##
#!/bin/bash
az login --tenant "a23c2c3a-6efd-4ce4-8b04-645bc2552e51"
az account show -o table

#Set Variable
appName="test-arm"
envName="dev"
location="westus"

rgName="rg-${appName}-${envName}"

#create a resource Group using bash
az group create --name "$rgName" \
  --location "$location" \
  --tags "env=$envName" "app=$appName" "createDate=$(date +%Y-%m-%d)"
az group show --name "$rgName" -o table

