# AWS vars
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-2"
}

# Cloudflare
variable "cloudflare_api_token" {
  description = "Cloudflare API token"
  type        = string
}

variable "default_zone_domain" {
  default = "dengneyal.me"
}

# Digitalocean
variable "digitalocean_token" {
  description = "Digitalocean API token"
  type        = string
}
variable "cloudflare_account_id" {
  description = "Cloudflare account ID"
  type        = string
}

# MISC - config contained in tfvars
variable "passbolt_subdomain" {}
variable "hidden_zone" {
  description = "zone id for hidden zone / domain for private use"
}