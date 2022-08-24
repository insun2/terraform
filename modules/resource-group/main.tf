
resource "azurerm_resource_group" "rg" {
  name = "${var.tags.Environment}-${var.name}"
  location = var.location
  tags = merge(var.tags, { Name = "${var.tags.Environment}-${var.name}"})
}