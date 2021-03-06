# Configure the Microsoft Azure Provider.
provider "azurerm" {
    version = "= 2.0.0"
    features{}
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
    name     = "${var.prefix}BasicRG${var.environment}"
    location = var.location
    tags     = var.tags
}
