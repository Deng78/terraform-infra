variable "digitalocean_token" {}
variable "droplets" {
  description = "Map of droplets"
  type = map(object({
    name       = string
    tags       = optional(list(string))
    size       = string
    region     = optional(string, "syd1")
    image      = string
    monitoring = optional(bool, true)
    subdomain = optional(string)
    hidden_zone = optional(string)
    project = optional(string, "default")
  }))
  default = {}
}
# variable "pvt_key" {} TODO: Add this variable