{
  description = "Test deployment for my server cluster";

  inputs = {
    nixpkgs.url =
      "github:nixos/nixpkgs/nixos-22.05"; # change this to your desired NixOS version
    # For accessing `deploy-rs`'s utility Nix functions    
    deploy-rs.url = "github:serokell/deploy-rs";
  };

  outputs = { self, nixpkgs, deploy-rs }: {
    nixosConfigurations.seraph = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ../hosts/seraph/configuration.nix
        ../common/default.nix
      ];
    };
    nixosConfigurations.demiurge = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ../hosts/demiurge/configuration.nix
        ../common/default.nix
      ];
    };
    nixosConfigurations.exgod = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ../hosts/exgod/configuration.nix
        ../common/default.nix
      ];
    };

    nixosConfigurations.hoyden = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ../hosts/hoyden/configuration.nix
        ../common/default.nix
      ];
    };

    deploy.nodes.hoyden = {
      hostname = "hoyden";
      user = "root";
      sshUser = "josiah";
      # magicRollback = false;
      remoteBuild = false;
      path = deploy-rs.lib.x86_64-linux.activate.nixos
        self.nixosConfigurations.hoyden;

      # This forces ssh to connect over IPv4.
      sshOpts = [ "-4" ];

      profiles.system = {
        path = deploy-rs.lib.x86_64-linux.activate.nixos
          self.nixosConfigurations.hoyden;
      };
    };            
    
    deploy.nodes.seraph = {
      hostname = "seraph";
      user = "root";
      sshUser = "alice";
      # magicRollback = false;
      remoteBuild = false;
      path = deploy-rs.lib.x86_64-linux.activate.nixos
        self.nixosConfigurations.seraph;

      # This forces ssh to connect over IPv4.
      sshOpts = [ "-4" ];

      profiles.system = {
        path = deploy-rs.lib.x86_64-linux.activate.nixos
          self.nixosConfigurations.seraph;
      };
    };
    deploy.nodes.demiurge = {
      hostname = "demiurge";
      user = "root";
      sshUser = "alice";
      # magicRollback = false;
      remoteBuild = false;
      path = deploy-rs.lib.x86_64-linux.activate.nixos
        self.nixosConfigurations.demiurge;

      # This forces ssh to connect over IPv4.
      sshOpts = [ "-4" ];

      profiles.system = {
        path = deploy-rs.lib.x86_64-linux.activate.nixos
          self.nixosConfigurations.demiurge;
      };
    };
    deploy.nodes.exgod = {
      hostname = "exgod";
      user = "root";
      sshUser = "alice";
      # magicRollback = false;
      remoteBuild = false;
      path = deploy-rs.lib.x86_64-linux.activate.nixos
        self.nixosConfigurations.exgod;

      # This forces ssh to connect over IPv4.
      sshOpts = [ "-4" ];

      profiles.system = {
        path = deploy-rs.lib.x86_64-linux.activate.nixos
          self.nixosConfigurations.exgod;
      };
    };            

    # This is highly advised, and will prevent many possible mistakes
    checks =
      builtins.mapAttrs (system: deployLib: deployLib.deployChecks self.deploy)
      deploy-rs.lib;
  };
}
