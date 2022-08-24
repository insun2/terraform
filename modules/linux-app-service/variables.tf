variable "resource_group_name" {
	type = string
  description = "RG name in Azure"
}

variable "location" {
	type = string
  description = "Resources location in Azure"
}

variable "service_plan_id" {
  type =  string
}

variable "name" {
  type = string
  description = "App name"
}

variable "application_stack" {
  type = object({
    docker_image = string
    docker_image_tag = string
  })
}

variable "tags" {
  type = map
}