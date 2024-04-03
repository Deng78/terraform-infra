# output "droplets" {
#   value = digitalocean_droplet.droplet
# }

output "droplet_records" {

  # Probably a better way to do this but this was the only magic i could come up with
  value = {
    for droplet in digitalocean_droplet.droplet : droplet.name => merge({
      ipv4_address = sensitive(droplet.ipv4_address)
      name = droplet.name
    },
      {
        subdomain = {
          for droplet_config in var.droplets : droplet_config.name  == droplet.name => droplet_config.subdomain
        }[true]
        hidden_zone = sensitive({
          for droplet_config in var.droplets : droplet_config.name  == droplet.name => droplet_config.hidden_zone
        }[true])
      }
    )
  }

}