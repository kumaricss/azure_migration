variable "location" {
  type        = string
  description = "RG location in Azure"
  default     = "East US"
}

variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
  default     = "my-rg01"
}
