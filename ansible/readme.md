# setup from scratch:
## install dependencies
ansible-galaxy collection install -r requirements.yml

##  run a play
~ansible-playbook -i hosts.yml all.yml --ask-vault-pass --ask-become-pass~

# instructions on specific roles
## abjure
Abjure is the media server and related configuration stack.

## debian_base
This is the base role that should be pulled in basically everywhere.

## dns_redir
This handles jowj.net redirects for my blog.

## halo
deploys services for private consumption of friends.

## highsea
*arr stack and related configs.

## shoggoth
WIP, observability plays.

## tailscale
Installs tailscale and joins my tailnet. nodes require manual approval by a tailnet admin ( me ) from an approved signing node.

## updater
I'm not sure if I actually should be using shit this way, but this is how i've updated hosts.
