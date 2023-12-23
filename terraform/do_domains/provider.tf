terraform {
    required_providers {
	digitalocean = {
	    source = "digitalocean/digitalocean"
	    version = "~> 2.29.0"
	}
    }
    backend "s3" {
	key      = "domains/terraform.tfstate"
	bucket   = "deploy-state"
	region   = "us-west-2"
	endpoint = "https://sfo2.digitaloceanspaces.com"
	skip_region_validation      = true
	skip_credentials_validation = true
	skip_metadata_api_check     = true

	# This is actually not needed, but declaring it here helps me remember where its supposed to live.	
	#shared_credentials_files = ["~/.aws/credentials"]
	#shared_config_files = ["~/.aws/config"]    	
    }
    
}


provider "digitalocean" {
    token = var.DO_PAT
}
