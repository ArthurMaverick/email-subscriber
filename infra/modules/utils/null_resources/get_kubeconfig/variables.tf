variable "local_exec_command" {
  description = "command to get credentials"
  type = string
}

variable "kubectl_config_path" {
  description = "Path to the kubectl config file. Defaults to $HOME/.kube/config"
  type        = string
  default     = ""
}

variable "node_pool_id" {
  description = "id value of node pool resource"
  type        = string
}