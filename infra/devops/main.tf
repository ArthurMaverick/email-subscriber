module "vpc" {
  source          = "../../../modules/digitalocean/network/vpc"
  doks_vpc_name   = "doks-vpc"
  doks_vpc_region = "nyc3"
}

module "cluster" {
  source = "../../modules/digitalocean/cluster"
  docks_cluster = {
    day        = "sunday"
    name       = "foo"
    region     = "nyc3"
    start_time = "04:00"
    vpc_uuid   = module.vpc.doks_vpc_id
  }
  
  docks_node_pool {
    name        = "worker-pool"
    size        = "s-2vcpu-2gb"
    node_count  = 1
    tags        = "backend"
    service     = "worker"
    min_nodes   = 1
    max_nodes   = 1
  }
}

module "project" {
  source = "../../../modules/digitalOcean/project"
  
  doks_project = {
    name        = "playground"
    description = "A project to represent development resources."
    purpose     = "Web Application"
    environment = "Development"
    resources   = [
      module.vpc.doks_vpc_urn,
      module.cluster.doks_cluster_urn,
    ]
  }
  
}

