# TerraformDev

Examples and scripts that I put together here as I go through the process of learning Terraform.

## Setup

As described here: https://www.terraform.io/docs/providers/azurerm/guides/azure_cli.html, I'm running this locally using interactive mode in the PowerShell command line. 
To set it up, you'll need to use

az login

az account list

az account set -subscription="GUID"

The initial files for this project were taken from https://learn.hashicorp.com/terraform/azure/variables_az and then quickly cut back to just create a resource group. However, that link will explain how variables are defined and referenced between files. Updates beyond this will come from documentation using the 2.+ documentation here: https://registry.terraform.io/providers/hashicorp/azurerm/2.0.0/docs/resources/template_deployment 
