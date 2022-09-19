resource "random_string" "suffix" {
  length  = var.string_length
  special = var.special
  upper   = var.upper
}




