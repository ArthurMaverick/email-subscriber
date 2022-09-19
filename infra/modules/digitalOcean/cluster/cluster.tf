resource "digitalocean_kubernetes_cluster" "doks_cluster" {
  name     = var.docks_cluster.name
  region   = var.docks_cluster.region
  version  = data.digitalocean_kubernetes_versions.doks_version.latest_version
  vpc_uuid = var.docks_cluster.vpc_uuid

  maintenance_policy {
    start_time  = var.docks_cluster.start_time
    day         = var.docks_cluster.day
  }
}

resource "digitalocean_kubernetes_node_pool" "doks_node_pool" {
  cluster_id = digitalocean_kubernetes_cluster.doks_cluster.id
  name       = var.docks_node_pool.name
  size       = var.docks_node_pool.size
  node_count = var.docks_node_pool.node_count
  tags       = ["${var.docks_node_pool.tags}"]

  labels = {
    service  = "${var.docks_node_pool.service}"
  }

  min_nodes = var.docks_node_pool.min_nodes
  max_nodes = var.docks_node_pool.max_nodes
}