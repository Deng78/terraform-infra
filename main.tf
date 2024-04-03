terraform {

  backend "s3" {
    bucket = "dneyal-terraform-state"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.43.0"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.36.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.28.0"
    }

  }
}

provider "aws" {
  region = var.aws_region
}

module "digitalocean" {
  source             = "./digitalocean"
  digitalocean_token = var.digitalocean_token
  droplets           = local.digitalocean_droplets
}

module "cloudflare" {
  source          = "./cloudflare"
  droplet_records = { for droplet in module.digitalocean["droplet_records"] : droplet.name => droplet }

  default_zone          = var.default_zone_domain
  cloudflare_api_token  = var.cloudflare_api_token
  cloudflare_account_id = var.cloudflare_account_id
}
