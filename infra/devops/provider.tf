terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.7.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 1.1.1"
    }
  }
}
backend "s3" {
  bucket = var.bucket
  key    = var.key
  region = var.region
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}