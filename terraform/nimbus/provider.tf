terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.29.0"
    }
  }
  backend "s3" {
    key                         = "nimbus/terraform.tfstate"
    bucket                      = "deploy-state"
    region                      = "us-west-2"
    endpoint                    = "https://sfo2.digitaloceanspaces.com"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }

}


provider "digitalocean" {
  token = var.DO_PAT
}
