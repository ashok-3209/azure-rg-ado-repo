targetScope = 'subscription'

param appName string
param envName string
param loc string = 'westus'

var rgName = 'rg-${appName}-${envName}'

resource rg 'Microsoft.Resources/resourceGroups@2025-04-01' = {
  name: rgName
  location: loc
}

// module storage 'storage.bicep' = {
//   name: 'storageDeployment'
//   scope: rg
//   params: {
//     storageAccountName: 'st${appName}${envName}001'
//     location: loc
//   }
// }
