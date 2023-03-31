data "azurerm_resources" "example8143" {
  resource_group_name = "example-resources8143"
}

# Get Resources with specific Tags
data "azurerm_resources" "example8143" {
  resource_group_name = "example-resources8143"

  required_tags = {
    environment = "production"
    role        = "webserver"
  }
}