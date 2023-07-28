{
  description = "Hoyden's Flake";
  
  inputs = {
    nixpkgs.url =
      "github:nixos/nixpkgs/nixos-22.05"; # change this to your desired NixOS version
    # For accessing `deploy-rs`'s utility Nix functions    
    deploy-rs.url = "github:serokell/deploy-rs";
    unstableTarball = fetchTarball
      "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";    
  };    

  outputs = { self, nixpkgs, unstableTarball }@attrs: {
    nixosConfigurations.hoyden = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [ ./configuration.nix ];
    };
  };

}




