
resource "azurerm_service_plan" "service-plan" {
  name = "${var.tags.Environment}-${var.name}"
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.os_type
  sku_name = var.sku_name
  tags = merge(var.tags, { Name = "${var.tags.Environment}-${var.name}"})
}