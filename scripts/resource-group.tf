resource "azurerm_resource_group" "streamtube" {
    name = var.app_name
    location = var.location
}