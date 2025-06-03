variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
  default     = "dev-jk-rsg02"
}

variable "location" {
  type        = string
  description = "RG location in Azure"
  default     = "westeurope"
}


variable "app_service_plan_name" {
  description = "Specifies the name of the App Service Plan component"
  default     = "dev-jk-asp02"
}

variable "app_service_name" {
  description = "Specifies the name of the App Service."
  default     = ""
}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
  Creator = "Kumar"
  Owner = "JK"
  Dept = "SO"
  environment = "DEV"
  }
}

