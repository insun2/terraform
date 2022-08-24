
module "rg-acsell" {
  source   = "../modules/resource-group"
  name = "rg-acSell"
  location = local.location 
  tags = var.default_tags
}