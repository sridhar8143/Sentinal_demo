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

resource "azurerm_resource_group" "Sri_first" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "Sridhar_second" {
  name                     = "examplesa"
  resource_group_name      = azurerm_resource_group.Sri_first.name
  location                 = azurerm_resource_group.Sri_first.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_mssql_server" "new_policy_check" {
  name                         = "example-sqlserver"
  resource_group_name          = azurerm_resource_group.Sri_first.name
  location                     = azurerm_resource_group.Sri_first.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_mssql_database" "policy_check_test" {
  name           = "acctest-db-d"
  server_id      = azurerm_mssql_server.new_policy_check.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 4
  read_scale     = true
  sku_name       = "S0"
  zone_redundant = true

  threat_detection_policy {
    state = "Disabled"
  }

  tags = {
    foo = "bar"
  }
}