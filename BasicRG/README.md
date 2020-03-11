# TerraformDev

Examples and scripts that I put together here as I go through the process of learning Terraform.

## Setup

As described here: [Azure Provider in CLI](https://www.terraform.io/docs/providers/azurerm/guides/azure_cli.html), I'm running this locally using interactive mode in the PowerShell command line.
To set it up, you'll need to use

az login

az account list

az account set -subscription="GUID"

The initial files for this project were taken from [using variables in terraform](https://learn.hashicorp.com/terraform/azure/variables_az) and then quickly cut back to just create a resource group. However, that link will explain how variables are defined and referenced between files. Updates beyond this will come from documentation using the 2.+ documentation here: [azurerm 2.0 provider](https://registry.terraform.io/providers/hashicorp/azurerm/2.0.0/docs/resources/template_deployment)

At [this commit](https://github.com/Intranoggin/TerraformDev/tree/acff91af4ee59f1bad4a0c8ea7040e8c79cea92a), I'm running terraform init, and terraform plan successfully.

```terraform
  PS C:\code\TerraformDev\BasicRG> terraform init

  Initializing the backend...

  Initializing provider plugins...
  - Checking for available provider plugins...
  - Downloading plugin for provider "azurerm" (hashicorp/azurerm) 2.0.0...

  Terraform has been successfully initialized!

  You may now begin working with Terraform. Try running "terraform plan" to see
  any changes that are required for your infrastructure. All Terraform commands
  should now work.

  If you ever set or change modules or backend configuration for Terraform,
  rerun this command to reinitialize your working directory. If you forget, other
  commands will detect it and remind you to do so if necessary.

  PS C:\code\TerraformDev\BasicRG> terraform plan
  Refreshing Terraform state in-memory prior to plan...
  The refreshed state will be used to calculate this plan, but will not be
  persisted to local or remote state storage.


  ------------------------------------------------------------------------

  An execution plan has been generated and is shown below.
  Resource actions are indicated with the following symbols:
  + create

  Terraform will perform the following actions:

  # azurerm_resource_group.rg will be created
  + resource "azurerm_resource_group" "rg" {
      + id       = (known after apply)
      + location = "centralus"
      + name     = "tfBasicRGDev"
      + tags     = {
          + "Dept"        = "Basic"
          + "Environment" = "Terraform Dev"
        }
    }

  Plan: 1 to add, 0 to change, 0 to destroy.

  ------------------------------------------------------------------------

  Note: You didn't specify an "-out" parameter to save this plan, so Terraform
  can't guarantee that exactly these actions will be performed if
  "terraform apply" is subsequently run.

  PS C:\code\TerraformDev\BasicRG> terraform apply

```
