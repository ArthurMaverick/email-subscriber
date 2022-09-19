## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.chart](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helm_config"></a> [helm\_config](#input\_helm\_config) | role ref values | <pre>object({<br>    helm_repository  = string<br>    helm_name        = string<br>    helm_chart       = string<br>    helm_namespace   = string<br>    wait             = bool<br>    set_values       = list(object())<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helm_release_chart"></a> [helm\_release\_chart](#output\_helm\_release\_chart) | helm release chart |
| <a name="output_helm_release_description"></a> [helm\_release\_description](#output\_helm\_release\_description) | helm release description |
| <a name="output_helm_release_id"></a> [helm\_release\_id](#output\_helm\_release\_id) | helm release id |
| <a name="output_helm_release_values"></a> [helm\_release\_values](#output\_helm\_release\_values) | helm release values |