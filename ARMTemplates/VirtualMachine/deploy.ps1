#Login-AzAccount

New-AzResourceGroup -Name demo -Location Eastus

New-AzResourceGroupDeployment -ResourceGroupName demo -TemplateFile .\template.json -TemplateParameterFile .\parameters.json -Verbose