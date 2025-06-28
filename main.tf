module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "frontend" {
  source                = "./modules/frontend"
  resource_group_name   = module.resource_group.name
  location              = module.resource_group.location
  app_service_plan_name = "dev-ftc-frontend-asp01"
  app_service_name      = "dev-ftc-frontend-app01"
}

module "backend" {
  source                = "./modules/backend"
  resource_group_name   = module.resource_group.name
  location              = module.resource_group.location
  app_service_plan_name = "dev-ftc-backend-asp01"
  app_service_name      = "dev-ftc-backend-app01"
}

module "backoffice" {
  source                = "./modules/backoffice"
  resource_group_name   = module.resource_group.name
  location              = module.resource_group.location
  app_service_plan_name = "dev-ftc-backoffice-asp01"
  app_service_name      = "dev-ftc-backoffice-app01"
}

module "database" {
  source              = "./modules/database"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  mysql_server_name   = "dev-ftc-mysqlserver02"
  mysql_database      = "dev-ftc-mysqldatabase02"
  admin_username      = "mysqladminuser"
  admin_password      = "MySqlP@ssw0rd123!"
}

#Apply Production:
#terraform apply -var-file=vars/prod.tfvars -lock-timeout=300s
#Apply staging:
#terraform apply -var-file=vars/staging.tfvars -lock-timeout=300s  