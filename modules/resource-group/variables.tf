variable "name" {
	type = string
  description = "RG name in Azure"
}

variable "location" {
	type = string
  description = "Resources location in Azure"
}

variable "tags" {
  type = map
}