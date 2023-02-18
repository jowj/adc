# ops/home/network.nix

{
  # Configuration for the network in general.
  network = { description = "home.jowj.net cluster definition"; };

  # This specifies the configuration for
  # `seraph` as a NixOS module.

  "seraph" = { config, pkgs, lib, ... }: {
    deployment.targetUser = "alice";
    deployment.targetHost = "seraph";

    # Import seraph configuration.nix
    imports = [
      ../../hosts/seraph/configuration.nix
      ../../common ];
  };

  # "hoyden" = { config, pkgs, lib, ... }: {
  #   deployment.targetUser = "josiah";
  #   deployment.targetHost = "hoyden";

  #   # Import seraph configuration.nix
  #   imports = [ ../../hosts/hoyden/configuration.nix ];
  # };  

}
