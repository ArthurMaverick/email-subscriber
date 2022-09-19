variable "helm_config" {
  description = "role ref values "
  type = object({
    helm_repository  = string
    helm_name        = string
    helm_chart       = string
    helm_namespace   = string
    wait             = bool
    set_values       = list(object())
  })
}