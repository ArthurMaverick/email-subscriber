output "doks_project_id" {
  value = digitalocean_project.doks_project_resources.id
}

output "doks_project_name" {
  value = digitalocean_project.doks_project_resources.name
}

output "doks_project_resources" {
  value = digitalocean_project.doks_project_resources.resources
}