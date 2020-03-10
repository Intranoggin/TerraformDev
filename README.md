# TerraformDev

Examples and scripts that I put together here as I go through the process of learning Terraform.

## Setup

As described here: [Azure Provider in CLI](https://www.terraform.io/docs/providers/azurerm/guides/azure_cli.html), I'm running this locally using interactive mode in the PowerShell command line.
To set it up, you'll need to use

az login

az account list

az account set -subscription="GUID"

The initial files for this project were taken from [using variables in terraform](https://learn.hashicorp.com/terraform/azure/variables_az) and then quickly cut back to just create a resource group. However, that link will explain how variables are defined and referenced between files. Updates beyond this will come from documentation using the 2.+ documentation here: [azurerm 2.0 provider](https://registry.terraform.io/providers/hashicorp/azurerm/2.0.0/docs/resources/template_deployment)

At [this commit](https://github.com/Intranoggin/TerraformDev/tree/e90f8b0b31101c8af1cdf843b04d21d6381d3702), I'm running terraform init successfully.

```terraform
    PS C:\code\TerraformDev> terraform init

    [0m[1mInitializing the backend...[0m

    [0m[1mInitializing provider plugins...[0m
    - Checking for available provider plugins...
    - Downloading plugin for provider "azurerm" (hashicorp/azurerm) 2.0.0...

    [0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
    [0m[32m
    You may now begin working with Terraform. Try running "terraform plan" to see
    any changes that are required for your infrastructure. All Terraform commands
    should now work.

    If you ever set or change modules or backend configuration for Terraform,
    rerun this command to reinitialize your working directory. If you forget, other
    commands will detect it and remind you to do so if necessary.[0m
```
