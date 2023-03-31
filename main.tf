data "azurerm_resources" "example" {
  resource_group_name = "example-resources"
}

# Get Resources with specific Tags
data "azurerm_resources" "example" {
  resource_group_name = "example-resources"

  required_tags = {
    environment = "production"
    role        = "webserver"
  }
}