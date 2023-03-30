Set-AzContext -Subscription 1505263f-be1f-4c0c-ba25-fcc8b91018ca

$resourceGroupName = "AKSVSSFRG"
$vnetName = "vnetscript"
$subnetName = "subnet1"
$subnetPrefix = "10.0.0.0/24"
$serviceEndpoint = "Microsoft.ServiceBus"

Get-AzVirtualNetwork `
-ResourceGroupName $resourceGroupName `
-Name $vnetName | Set-AzVirtualNetworkSubnetConfig `
-Name $subnetName `
-AddressPrefix $subnetPrefix `
-ServiceEndpoint $serviceEndpoint | Set-AzVirtualNetwork
