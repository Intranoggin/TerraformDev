# Configure the Microsoft Azure Provider.
provider "azurerm" {
    version = "= 2.0.0"
    features{}
}

# Create a resource group
resource "azurerm_resource_group" "BasicWebApp" {
    name     = "${var.prefix}BasicWebAppRG2${var.environment}"
    location = var.location
    tags     = var.tags  
}

resource "azurerm_app_service_plan" "BasicWebApp" {
    name     = "${var.prefix}BasicWebAppPlan${var.environment}"
    location = azurerm_resource_group.BasicWebApp.location
    resource_group_name = azurerm_resource_group.BasicWebApp.name
    kind = "Linux"
    reserved = true
    tags     = var.tags

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "BasicWebApp" {
  name                = "${var.prefix}BasicWebAppService${var.environment}"
  location            = azurerm_resource_group.BasicWebApp.location
  resource_group_name = azurerm_resource_group.BasicWebApp.name
  app_service_plan_id = azurerm_app_service_plan.BasicWebApp.id  

  site_config {
    linux_fx_version = "NODE|10.14"
  }
}
