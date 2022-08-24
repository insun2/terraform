variable "resource_group_name" {
	type = string
  description = "RG name in Azure"
}

variable "location" {
	type = string
  description = "Resources location in Azure"
}

variable "os_type" {
  type = string
}

variable "sku_name" {
  type = string
}

variable "name" {
  type =  string
}

variable "tags" {
  type = map
}