
module "rg-acsell" {
  source   = "../modules/resource-group"
  name = "rg-acSell"
  location = local.location 
  tags = local.default_tags
}