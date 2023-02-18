{
  description = "Test deployment for my server cluster";

  # For accessing `deploy-rs`'s utility Nix functions
  inputs.deploy-rs.url = "github:serokell/deploy-rs";

  outputs = { self, nixpkgs, deploy-rs }: {
    nixosConfigurations.seraph = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ../hosts/seraph/configuration.nix ];
    };

    deploy.nodes.seraph.profiles.system = {
      user = "alice";
      sshUser = "alice";
      remoteBuild = false;
      path = deploy-rs.lib.x86_64-linux.activate.nixos self.nixosConfigurations.some-random-system;
    };

    # This is highly advised, and will prevent many possible mistakes
    checks = builtins.mapAttrs (system: deployLib: deployLib.deployChecks self.deploy) deploy-rs.lib;
  };
}
