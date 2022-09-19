output "doks_cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.doks_cluster.endpoint
}

output "doks_cluster_urn" {
  value = digitalocean_kubernetes_cluster.doks_cluster.urn
}

output "doks_cluster_kube_config" {
  value = digitalocean_kubernetes_cluster.doks_cluster.kube_config
}

output "doks_cluster_id" {
  value = digitalocean_kubernetes_cluster.doks_cluster.id
}

output "doks_cluster_status" {
  value = digitalocean_kubernetes_cluster.doks_cluster.status
}