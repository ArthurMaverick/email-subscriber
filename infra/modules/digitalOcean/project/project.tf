resource "digitalocean_project" "doks_project_resources" {
  name        = var.doks_project.name
  description = var.doks_project.description
  purpose     = var.doks_project.purpose
  environment = var.doks_project.environment
  resources   = var.doks_project.resources
}

