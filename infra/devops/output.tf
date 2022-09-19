#=================== k8s cluster ===================#

output "doks_cluster_kube_config" {
  value = module.cluster.doks_cluster_kube_config
}

output "doks_cluster_urn" {
  value = module.cluster.doks_cluster_urn
}

output "doks_cluster_status" {
  value = module.cluster.doks_cluster_status
}

#=================== k8s network ===================#

output "vpc_id" {
  value = module.vpc.doks_vpc_id
}

output "vpc_urn" {
  value = module.vpc.doks_vpc_urn
}