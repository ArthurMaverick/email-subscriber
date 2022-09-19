## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.doks_cluster](https://registry.terraform.io/providers/hashicorp/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_kubernetes_node_pool.doks_node_pool](https://registry.terraform.io/providers/hashicorp/digitalocean/latest/docs/resources/kubernetes_node_pool) | resource |
| [digitalocean_kubernetes_versions.doks_version](https://registry.terraform.io/providers/hashicorp/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_docks_cluster"></a> [docks\_cluster](#input\_docks\_cluster) | digital ocean kube cluster | <pre>object({<br>    day        = string<br>    name       = string<br>    region     = string<br>    start_time = string<br>    vpc_uuid   = string<br>  })</pre> | n/a | yes |
| <a name="input_docks_node_pool"></a> [docks\_node\_pool](#input\_docks\_node\_pool) | digital ocean kubernetes node pool | <pre>object({<br>    name        = string<br>    size        = string<br>    node_count  = number<br>    tags        = string<br>    service     = string<br>    min_nodes   = number<br>    max_nodes   = number<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_doks_cluster_endpoint"></a> [doks\_cluster\_endpoint](#output\_doks\_cluster\_endpoint) | n/a |
| <a name="output_doks_cluster_id"></a> [doks\_cluster\_id](#output\_doks\_cluster\_id) | n/a |
| <a name="output_doks_cluster_kube_config"></a> [doks\_cluster\_kube\_config](#output\_doks\_cluster\_kube\_config) | n/a |
| <a name="output_doks_cluster_status"></a> [doks\_cluster\_status](#output\_doks\_cluster\_status) | n/a |
| <a name="output_doks_cluster_urn"></a> [doks\_cluster\_urn](#output\_doks\_cluster\_urn) | n/a |