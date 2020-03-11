# TerraformDev

Examples and scripts that I put together here as I go through the process of learning Terraform.

## Setup

As described here: [Azure Provider in CLI](https://www.terraform.io/docs/providers/azurerm/guides/azure_cli.html), I'm running this locally using interactive mode in the PowerShell command line.
To set it up, you'll need to use

az login

az account list

az account set -subscription="GUID"

Teamplates:

- [BasicRG](./BasicRG/
- [BasicWebApp](./BasicWebApp/)
