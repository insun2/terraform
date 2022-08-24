
module "app-acsell-front" {
  source   = "../modules/linux-app-service"
  resource_group_name = module.rg-acsell.resource_group_name
  location = module.rg-acsell.resource_group_location
  service_plan_id = module.plan-acSell.app_service_plan_id
  name = "as-acSell-frontend"
  application_stack = {
    docker_image = "cracsell.azurecr.io/front"
    docker_image_tag = "staging"
  }
  tags = var.default_tags
}

module "app-acsell-back" {
  source   = "../modules/linux-app-service"
  resource_group_name = module.rg-acsell.resource_group_name
  location = module.rg-acsell.resource_group_location
  service_plan_id = module.plan-acSell.app_service_plan_id
  name = "as-acSell-backend"
  application_stack = {
    docker_image = "cracsell.azurecr.io/backend"
    docker_image_tag = "staging"
  }
  tags = var.default_tags
}