terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {
    
  }
  
}

resource "azurerm_resource_group" "example" {
  name     = "Sridhar_tcs8143"
  location = "West Europe"
}