param apiManagementName string
param location string = resourceGroup().location

param env string
param publisherEmail string
param publisherName string

param sku string
param skuCount int


resource newApiManagement 'Microsoft.ApiManagement/service@2023-05-01-preview' = {
  name: '${apiManagementName}-${env}'
  location: location
  sku: {
    capacity: skuCount
    name: sku
  }
  properties: {
    publisherEmail: publisherEmail
    publisherName: publisherName
  }
}
