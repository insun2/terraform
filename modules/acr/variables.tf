variable "resource_group_name" {
	type = string
  description = "RG name in Azure"
}

variable "name" {
	type = string
  description = "ACR name in Azure"
}

variable "location" {
	type = string
  description = "Resources location in Azure"
}

variable "sku" {
  type = string    
}

variable "tags" {
  type = map
}