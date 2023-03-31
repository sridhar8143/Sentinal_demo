terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
   subscription_id="f13ee35e-698e-4e96-9c57-6ff72c0da322"
  tenant_id="f6981b0a-3915-4628-be7e-368196415f8f"
  client_id="94360f58-5bed-4f81-b199-bb60611fc76a"
  client_secret="PMe8Q~PiTSMIl1AMnlWQahTwiKysBvCjsFxtuaU7"
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "kdjnalskdlaskmclmksmc"
  location = "West Europe"
}