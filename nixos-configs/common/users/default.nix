# common/users/default.nix

# Inputs to this NixOS module, in this case we are
# using `pkgs` so I can configure my favorite shell fish
# and `config` so we can make my SSH key also work with
# the root user.
{ config, pkgs, ... }:

{
  # The block that specifies my user account.
  users.users.josiah = {
    isNormalUser = true;
    shell = pkgs.bash;

    # My SSH keys.
    openssh.authorizedKeys.keys = [
      # Replace this with your SSH key!
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPAZhFDzl1lbhWJ7MiTV3+Z1EY8M5b4cH/+ju4uo1d91 admin"
    ];
  };
}
