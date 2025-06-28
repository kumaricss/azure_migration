resource "azurerm_app_service_plan" "asp1" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = merge(var.tags)

  sku {
    tier = "Standard"
    size = "S1"
  }
}


resource "azurerm_app_service" "app1" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.asp1.id
  tags                = merge(var.tags)

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  # connection_string {
  #   name  = "Database"
  #   type  = "SQLServer"
  #   value = "Server=tcp:${azurerm_sql_server.test.fully_qualified_domain_name} Database=${azurerm_sql_database.test.name};User #ID=${azurerm_sql_server.test.administrator_login};Password=${azurerm_sql_server.test.administrator_login_password};Trusted_Connection=False;Encrypt=True;"
  # }
}