$Region = "WestUS2"
$ResourceGroup = "stream-analytics-lab"
Login-AzureRmAccount
New-AzureRmResourceGroup -Name $ResourceGroup -Location $Region
