module "cr-acsell" {
  source   = "../modules/acr"
  resource_group_name = module.rg-acsell.resource_group_name
  location = module.rg-acsell.resource_group_location
  name = "cracsell"
  sku = "Basic"
  tags = var.default_tags
}