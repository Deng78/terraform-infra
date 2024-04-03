# Folder structure for basic terraform repo

## This repo will contain config for cloudflare, digitalocean, aws

```
.
├── cloudflare
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── digitalocean
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── aws
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── main.tf
├── outputs.tf
└── variables.tf
```

## How to run code

```bash
# Initialize terraform
terraform init

# Plan terraform
terraform plan

# Apply terraform
terraform apply
```

## How to destroy

```bash
terraform destroy
```

## How to create a new module

```bash
# Create a new directory
mkdir new_module

# Create files
touch new_module/main.tf
touch new_module/outputs.tf
touch new_module/variables.tf
```

## How to use a module

```bash
module "new_module" {
  source = "./new_module"
  # Add any required variables
}
```

## How to use a module from git

````bash
module "new_module" {
  source = "



```bash
.
├── README.md
├── digitalocean
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
├── cloudflare
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
└── aws
    ├── main.tf
    ├── provider.tf
    └── variables.tf

4 directories, 11 files
````

## Prerequisites

- Terraform installed
- Cloudflare account
- Digitalocean account
- AWS account

## Steps

1. Clone this repo
2. Change the values in the respective variables.tf file
3. Run `terraform init` to initialize the providers
4. Run `terraform plan` to see the changes that will be made
5. Run `terraform apply` to apply the changes

## Note

- The cloudflare provider will create a new A record for the domain
- The digitalocean provider will create a new droplet
- The aws provider will create a new ec2 instance
- The values are hardcoded in the variables.tf file. You can change them to use variables or environment variables
- The provider.tf file contains the provider configuration
- The main.tf file contains the resource configuration
- The terraform.tfstate file contains the state of the resources
- The terraform.tfstate.backup file contains the backup of the state file

## Clean up

- Run `terraform destroy` to destroy the resources created by terraform
- Run `terraform state list` to list the resources created by terraform
- Run `terraform state rm <resource_name>` to remove the resource from the state file
- Run `terraform import <resource_name> <resource_id>` to import the resource to the state file
- Run `terraform taint <resource_name>` to mark the resource for recreation
- Run `terraform output` to see the output values
- Run `terraform show` to see the details of the resources created
- Run `terraform fmt` to format the code
- Run `terraform validate` to validate the code
- Run `terraform graph` to see the graph of the resources

## References

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/cloudflare-provider?in=terraform/cloudflare-get-started)
- [Cloudflare](https://developers.cloudflare.com/api)
- [Digitalocean](

```bash
.
├── README.md
├── aws
│   ├── aws.tf
│   └── variables.tf
├── cloudflare
│   ├── cloudflare.tf
│   └── variables.tf
├── digitalocean
│   ├── digitalocean.tf
│   └── variables.tf
└── terraform.tfvars
```

## Usage

### Install Terraform

```bash
brew install terraform
```

### Initialize Terraform

```bash
terraform init
```

### Plan Terraform

```bash
terraform plan
```

### Apply Terraform

```bash
terraform apply
```

### Destroy Terraform

```bash
terraform destroy
```

```bash
.
├── aws
│   ├── backend.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── terraform.tfvars
│   └── variables.tf
├── cloudflare
│   ├── backend.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── terraform.tfvars
│   └── variables.tf
├── digitalocean
│   ├── backend.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── terraform.tfvars
│   └── variables.tf
└── README.md
```

## AWS

- This folder will contain all the terraform config for aws

## Cloudflare

- This folder will contain all the terraform config for cloudflare

## DigitalOcean

- This folder will contain all the terraform config for digitalocean

## README.md

- This file

```bash
.
├── aws
│   ├── iam.tf
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
├── cloudflare
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
├── digitalocean
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
├── README.md
└── terraform.tfstate
```

```bash
├── README.md
├── cloudflare
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── digitalocean
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
└── terraform.tfvars

2 directories, 8 files
```

## Commands

- terraform init
- terraform plan
- terraform apply
- terraform destroy
- terraform fmt
- terraform validate

## Variables

- terraform.tfvars
- variables.tf
- outputs.tf

## Modules

- modules can be created for each cloud provider

## State

- terraform.tfstate
- terraform.tfstate.backup

## Backend

- terraform backend can be used to store the state file remotely (eg: S3, GCS, etc)

## Providers

- Providers can be defined in each module
- Providers can be defined in the main.tf file

## Example

- [cloudflare](cloudflare)
- [digitalocean](digitalocean)

## Terraform

- [terraform](https://www.terraform.io/)
- [terraform-getting-started](https://learn.hashicorp.com/collections/terraform/getting-started)
- [terraform-aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [terraform-digitalocean](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs)
- [terraform-cloudflare](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs)
- [terraform-kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)
- [terraform-google](https://registry.terraform.io/providers/hashicorp/google/latest/docs)
- [terraform-azure](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [terraform-oci](https://registry.terraform.io/providers/hashicorp/oci/latest/docs)
- [terraform-vsphere](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs)
- [terraform-heroku](https://registry.terraform.io/providers/hashicorp/heroku/latest/docs)
- [terraform-dnsimple](https://registry.terraform.io/providers/dnsimple/dnsimple/latest/docs)
- [terraform-linode](https://registry.terraform.io/providers/linode/lin

```bash
.
├── cloudflare
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── digitalocean
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── aws
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── .gitignore
└── README.md
```

# Terraform commands

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

# Terraform commands with target

```bash
terraform plan -target=module.digitalocean
terraform apply -target=module.digitalocean
```

# Terraform commands with auto approve

```bash
terraform apply -auto-approve
terraform destroy -auto-approve
```

# Terraform commands with input variables

```bash
terraform apply -var="do_token=YOUR_DO_TOKEN"
```

# Terraform commands with input variables file

```bash
terraform apply -var-file="variables.tfvars"
```

# Terraform commands with input variables file and auto approve

```bash
terraform apply -var-file="variables.tfvars" -auto-approve
```

```bash
.
├── cloudflare
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── digitalocean
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── aws
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── README.md
└── terraform.tfvars
```

## Steps to use the repo

1. Clone the repo
2. cd into the respective folder and run the following commands

```bash
terraform init
terraform plan
terraform apply
```

```bash
.
├── cloudflare
│   └── main.tf
├── digitalocean
│   └── main.tf
└── aws
    └── main.tf
```

# Steps to create a terraform module

1. Create a folder with the name of the module
2. Create a main.tf file in the folder
3. Create a variables.tf file in the folder
4. Create an outputs.tf file in the folder
5. Create a README.md file in the folder
6. Create a .gitignore file in the folder
7. Create a .tfvars file in the root folder
8. Create a .tf file in the root folder
9. Create a Makefile in the root folder

# Folder structure for a terraform module

```bash
.
├── .gitignore
├── .tf
├── .tfvars
├── Makefile
├── README.md
└── my_module
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
```

```bash
├── README.md
├── cloudflare
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── digitalocean
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── aws
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── modules
│   ├── cloudflare
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── digitalocean
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── aws
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── scripts
│   └── install.sh
└── terraform.tfvars
```
