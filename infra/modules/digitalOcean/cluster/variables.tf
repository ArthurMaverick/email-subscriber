variable "docks_cluster" {
  description = "digital ocean kube cluster" 
  type = object({
    day        = string
    name       = string
    region     = string
    start_time = string
    vpc_uuid   = string
  })
}

variable "docks_node_pool" {
  description = "digital ocean kubernetes node pool"
  type = object({
    name        = string
    size        = string
    node_count  = number
    tags        = string
    service     = string
    min_nodes   = number
    max_nodes   = number
  })
}

# resource "digitalocean_kubernetes_cluster" "doks" {
  #   name   = "foo"
  #   region = "nyc1"
  #   version = data.digitalocean_kubernetes_versions.doks_version.latest_version

  #   maintenance_policy {
  #     start_time  = "04:00"
  #     day         = "sunday"
  #   }
  # }

# resource "digitalocean_kubernetes_node_pool" "bar" {
  #   cluster_id = digitalocean_kubernetes_cluster.doks.id

  #   name       = "worker-pool"
  #   size       = "s-2vcpu-2gb"
  #   node_count = 1
  #   tags       = ["backend"]

  #   labels = {
  #     service  = "worker"
  #   }

  #   min_nodes = 1
  #   max_nodes = 1
  # }