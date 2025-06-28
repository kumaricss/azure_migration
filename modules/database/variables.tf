variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "RG location in Azure"
}

variable "mysql_server_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "dev-ftc-mysqlserver01"
}

variable "mysql_database" {
  type        = string
  description = "The name of the SQL Database."
  default     = "SampleDatabase01"
}

variable "admin_username" {
  type        = string
  description = "The administrator username of the SQL logical server."
  default     = "azureadmin"
}

variable "admin_password" {
  type        = string
  description = "The administrator password of the SQL logical server."
  sensitive   = true
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    Creator     = "Kumar"
    Owner       = "JK"
    Dept        = "SO"
    environment = "DEV"
  }
}