variable "cloudflare_api_token" {}
variable "cloudflare_account_id" {}
variable "default_zone" {}
variable "droplet_records" {
  description = "Map of digitalocean droplets"
  type = map(object({
    name       = string
    subdomain = optional(string)
    ipv4_address = string
    hidden_zone = optional(string)
  }))
  default = {}
}