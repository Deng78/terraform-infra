locals {
  digitalocean_droplets = {
    passbolt = {
      name      = "passbolt"
      tags      = ["passbolt"]
      size      = "s-1vcpu-1gb"
      region    = "syd1"
      image     = "131466025"
      subdomain = sensitive(var.passbolt_subdomain)
      zone      = var.hidden_zone
    }
    # test = {
    #   name   = "testing-server"
    #   tags   = ["test-server-tag"]
    #   size   = "s-1vcpu-512mb-10gb "
    #   region = "syd1"
    #   image  = "142476112"
    #   subdomain = "testing"
    # }
  }
}