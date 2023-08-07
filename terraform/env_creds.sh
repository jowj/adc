#!/bin/sh
# sets up env vars needed for configuring proxmox / terraform
export TF_VAR_PM_API_TOKEN_ID=$(pass pm_api_token_id)
export TF_VAR_PM_API_TOKEN_SECRET=$(pass pm_api_token_secret)
export TF_VAR_DO_PAT=$(pass do_pat)
export AWS_PROFILE=digitalocean
