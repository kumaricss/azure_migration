output "app_service_plan_id" {
  description = "The resource ID of the App Service Plan component"
  value       = azurerm_app_service_plan.asp3.id
}

output "maximum_number_of_workers" {
  description = " The maximum number of workers supported with the App Service Plan's sku"
  value       = azurerm_app_service_plan.asp3.maximum_number_of_workers
}

output "app_service_id_01" {
  description = "The resource ID of the App Service component"
  value       = azurerm_app_service.app3.id
}

output "default_site_hostname_01" {
  description = "The Default Hostname associated with the App Service"
  value       = format("https://%s/", azurerm_app_service.app3.default_site_hostname)
}