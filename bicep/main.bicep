
targetScope= 'subscription'

param resourceGroupName string
param resourceGroupLocation string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
}
