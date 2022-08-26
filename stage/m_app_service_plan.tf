
module "plan-acSell" {
  source = "../modules/app-service-plan"
  resource_group_name = module.rg-acsell.resource_group_name
  location = module.rg-acsell.resource_group_location
  os_type = "Linux"
  sku_name = "B1"
  name = "plan-acSell"
  tags = local.default_tags
}