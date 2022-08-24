
resource "azurerm_linux_web_app" "linux-app-service" {
  name = "${var.tags.Environment}-${var.name}"
  location = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.service_plan_id
  
  site_config {
    application_stack {
      docker_image = var.application_stack.docker_image
      docker_image_tag = var.application_stack.docker_image_tag
    }
    always_on = true
  }
  identity {
   type = "SystemAssigned" 
  }
  tags = merge(var.tags, { Name =  "${var.tags.Environment}-${var.name}"})
}