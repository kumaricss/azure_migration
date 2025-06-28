variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "RG location in Azure"
}

variable "app_service_plan_name" {
  type        = string
  description = "Specifies the name of the App Service Plan component"
}

variable "app_service_name" {
  type        = string
  description = "Specifies the name of the App Service."

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

