variable "doks_project" {
  description = "project ref values"
  type = object({
    name        = string
    description = string
    purpose     = string
    environment = string
    resources   = list(string)
  })
}
# resource "digitalocean_project" "doks_project_resources" {
#   name        = "playground"
#   description = "A project to represent development resources."
#   purpose     = "Web Application"
#   environment = "Development"
#   resources = []
# }