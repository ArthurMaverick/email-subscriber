resource "digitalocean_vpc" "doks_vpc" {
  name   = var.doks_vpc_name
  region = var.doks_vpc_region
}
