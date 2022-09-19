
output "helm_release_id" {
  value = helm_release.chart.id
  description = "helm release id"
}

output "helm_release_description" {
  value = helm_release.chart.description
  description = "helm release description"
}

output "helm_release_chart" {
  value = helm_release.chart.chart
  description = "helm release chart"
}

output "helm_release_values" {
  value = helm_release.chart.values
  description = "helm release values"
}