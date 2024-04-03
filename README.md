## This repo will contain config for cloudflare, digitalocean, aws

```
.
├── cloudflare
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
├── digitalocean
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── aws
│   └── main.tf
├── main.tf
├── .example.tfvars
├── locals.tf
└── variables.tf
└── README.tf
```

## How to run code

```bash
# Initialize terraform
terraform init

# Plan terraform
terraform plan -var-file="config.tfvars"

# Apply terraform
terraform apply
```

## Prerequisites

- Terraform installed
- Cloudflare account
- Digitalocean account
- AWS account

## Providers

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/cloudflare-provider?in=terraform/cloudflare-get-started)
- [Cloudflare](https://developers.cloudflare.com/api)
- [Digitalocean](https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean)

##  Modules
### AWS

- This folder will contain all the terraform config for aws

### Cloudflare

- This folder will contain all the terraform config for cloudflare

### DigitalOcean

- This folder will contain all the terraform config for digitalocean

## Commands

- terraform init
- terraform plan
- terraform apply
- terraform destroy
- terraform fmt
- terraform validate

## State / Backend

- terraform backend / state managed in AWS S3

## Terraform commands with target

```bash
terraform plan -target=module.digitalocean
terraform apply -target=module.digitalocean
```
