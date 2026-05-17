# setup from scratch:
## install dependencies
ansible-galaxy collection install -r requirements.yml

## form the swarm cluster
ansible-playbook -i inventory/hosts.yml _cluster_init.yml

## deploy application stacks
ansible-playbook -i inventory/hosts.yml _cluster_deploy_stacks.yml

# roles

## swarm_cluster
Cluster formation and traefik deployment. Manages the on-premise Docker Swarm (lair as manager, highsea + archon as workers) over Tailscale. Handles swarm init, worker join, node labeling, and a unified traefik v3.2 ingress.

`_cluster_init.yml` is destructive (full teardown/rebuild). Use sparingly.

## swarm_stacks
Deploys application stacks (abjure, highsea, halo) to the swarm. Idempotent. Swarm diffs the compose files and only updates changed services.

`_cluster_deploy_stacks.yml` is safe to run repeatedly.

## debian_base
Base role for system setup: Docker install, users, SSH config, packages.

## dns_redir
Traefik-based redirect for jowj.net on util01 (cloud). Independent of the on-prem swarm.

## tailscale
Installs tailscale and joins the tailnet. Nodes require manual approval by a tailnet admin from an approved signing node.

## updater
Runs apt package updates.

## shoggoth
WIP, observability.
