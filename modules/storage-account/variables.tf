variable "resource_group_name" {
	type = string
  description = "RG name in Azure"
}

variable "location" {
	type = string
  description = "Resources location in Azure"
}

variable "name" {
	type = string
}

variable "storage_container_name" {
	type = string
}

variable "account_tier" {
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  type = string
  default = "LRS"
}

variable "allow_nested_items_to_be_public" {
  type = bool
  default = true
}

variable "tags" {
  type = map
}