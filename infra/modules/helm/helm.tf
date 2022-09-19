# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY A SAMPLE CHART
# A chart repository is a location where packaged charts can be stored and shared. Define Bitnami Helm repository location,
# so Helm can install the nginx chart.
# ---------------------------------------------------------------------------------------------------------------------

resource "helm_release" "chart" {
  for_each = {for i, v in var.helm_config:  i => v}

  repository       = each.value.repository
  name             = each.value.name
  chart            = each.value.chart
  create_namespace = each.value.namespace
  namespace        = each.value.namespace
  wait             = each.value.wait
  
    dynamic "set" {
      for_each = each.value.set_values
      content {
        name  = set.name
        value = set.value
    }
  }

  # depends_on = [google_container_node_pool.node_pool]
  depends_on = [var.node_pool_id]
}
