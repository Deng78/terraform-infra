terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.36.0"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_droplet" "droplet" {
  for_each = var.droplets

  name   = each.value.name
  tags   = each.value.tags
  size   = each.value.size
  region = each.value.region
  image  = each.value.image
  monitoring = each.value.monitoring

}