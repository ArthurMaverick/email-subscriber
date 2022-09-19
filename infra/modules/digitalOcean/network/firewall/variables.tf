variable "doks_firewall_name" {
  description = "Name of the firewall"
  type        = string
  default     = "doks-firewall"
} 
variable "cluster_inbounds" {
  description = "digital ocean inbounds for cluster" 
  type = object({
    tcp_ssh         = object({ port_range = string, protocol = string, source_addresses = list(string) })
    tcp_http        = object({ port_range = string, protocol = string, source_addresses = list(string) })
    tcp_https       = object({ port_range = string, protocol = string, source_addresses = list(string) })
    icmp            = object({ protocol = string, source_addresses = list(string) })
    tcp_api_server  = object({ port_range = string, protocol = string, source_addresses = list(string) })
  })
}

variable "cluster_outbounds" {
  description = "digital ocean outbounds for cluster" 
  type      = object({
    tcp_all = object({ port_range = string, protocol = string, destination_addresses = list(string) })
    icmp    = object({ protocol = string, destination_addresses = list(string) })
  })
}


# resource "digitalocean_firewall" "web" {
#   name = "only-22-80-and-443"

#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "22"
#     source_addresses = ["192.168.1.0/24", "2002:1:2::/48"]
#   }
# inbound_rule {
#     protocol         = "tcp"
#     port_range       = "6443"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }
#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "80"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "443"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   inbound_rule {
#     protocol         = "icmp"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   outbound_rule {
#     protocol              = "tcp"
#     port_range            = "0-65535"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   outbound_rule {
#     protocol              = "icmp"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }
# }