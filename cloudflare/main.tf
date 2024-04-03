resource "cloudflare_zone" "default_zone" {
  account_id = var.cloudflare_account_id
  zone = var.default_zone
}

resource "cloudflare_record" "vscode-marketplace-dengneyal" {
  name    = "_visual-studio-marketplace-dengneyal"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "5e0d03f1-233b-46a6-a80e-d747ec62991f"
  zone_id = cloudflare_zone.default_zone.id
}

# DNS configuration for Digital Ocean droplets
resource "cloudflare_record" "droplets_records" {

  for_each = { for droplet in var.droplet_records : droplet.name => droplet }

  name     = each.value.subdomain != null ? each.value.subdomain : each.value.name
  proxied  = true
  ttl      = 1
  type     = "A"
  value    = each.value.ipv4_address
  zone_id  = each.value.hidden_zone != null ? sensitive(each.value.hidden_zone) : cloudflare_zone.default_zone.id

}
