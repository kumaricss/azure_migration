variable "name" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "RG location in Azure"
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

