locals {
  common_tags = {
    environment  = var.environment
    application  = var.application
    cluster_name = var.cluster_name
  }
  name_prefix = "${var.naming_prefix}-${var.environment}"
}