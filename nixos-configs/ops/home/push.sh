#!/usr/bin/env nix-shell

# Specify the packages we are using in this
# script as well as the fact that we are running it
# in bash.
#! nix-shell -p morph -i bash

# Explode on any error.
set -e

# Build the system configurations for every
# machine in this network and register them as
# garbage collector roots so `nix-collect-garbage`
# doesn't sweep them away.
morph build --keep-result ~/Documents/projects/adc/nixos-configs/ops/home/network.nix

# Push the config to the hosts.
morph push ~/Documents/projects/adc/nixos-configs/ops/home/network.nix

# Activate the NixOS configuration on the
# network.
morph deploy ~/Documents/projects/adc/nixos-configs/ops/home/network.nix test
