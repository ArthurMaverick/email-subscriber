resource "digitalocean_firewall" "doks_firewall" {
  name = var.doks_firewall_name
  
#==============================================================
###################### INBOUND RULES ##########################
#==============================================================
  inbound_rule {
    protocol         = var.cluster_inbounds.tcp_ssh.protocol
    port_range       = var.cluster_inbounds.tcp_ssh.port_range
    source_addresses = var.cluster_inbounds.tcp_ssh.source_addresses
  }

  inbound_rule {
    protocol         = var.cluster_inbounds.tcp_http.protocol
    port_range       = var.cluster_inbounds.tcp_http.port_range
    source_addresses = var.cluster_inbounds.tcp_http.source_addresses
  }

  inbound_rule {
    protocol         = var.cluster_inbounds.tcp_https.protocol
    port_range       = var.cluster_inbounds.tcp_https.port_range
    source_addresses = var.cluster_inbounds.tcp_https.source_addresses
  }

  inbound_rule {
    protocol         = var.cluster_inbounds.icmp.protocol
    port_range       = var.cluster_inbounds.icmp.port_range
    source_addresses = var.cluster_inbounds.icmp.source_addresses
  }

  inbound_rule {
    protocol         = var.cluster_inbounds.tcp_api_server.protocol
    port_range       = var.cluster_inbounds.tcp_api_server.port_range
    source_addresses = var.cluster_inbounds.tcp_api_server.source_addresses
  }

#==============================================================
###################### OUTBOUND RULES ##########################
#==============================================================
  outbound_rule {
    protocol              = var.cluster_outbounds.tcp_all.protocol
    port_range            = var.cluster_outbounds.tcp_all.port_range
    destination_addresses = var.cluster_outbounds.tcp_all.destination_addresses
  }

  outbound_rule {
    protocol              = var.cluster_outbounds.icmp.protocol
    port_range            = var.cluster_outbounds.icmp.port_range
    destination_addresses = var.cluster_outbounds.icmp.destination_addresses
  }
}