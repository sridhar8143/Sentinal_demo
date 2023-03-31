provider "azurerm" {
  features {
    
  }
  
}

resource "azurerm_resource_group" "example" {
  name     = "Sridhar_tcs8143"
  location = "West Europe"
}