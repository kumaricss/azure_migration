resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = merge(var.tags)
}

resource "azurerm_mysql_flexible_server" "default" {
  name                   = var.mysql_server_name
  location               = azurerm_resource_group.rg.location
  resource_group_name    = azurerm_resource_group.rg.name
  administrator_login    = var.admin_username
  administrator_password = var.admin_password # Use secret management in real setup
  sku_name               = "B_Standard_B1ms"
  version                = "8.0.21"
  backup_retention_days  = 7

  tags = merge(var.tags)
}

resource "azurerm_mysql_flexible_database" "default" {
  name                = var.mysql_database
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mysql_flexible_server.default.name
  charset             = "utf8"
  collation           = "utf8_general_ci"
}
