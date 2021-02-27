{
  inputs.nixos-fhs-compat.url = "github:balsoft/nixos-fhs-compat";

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.container = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
      specialArgs = { inherit inputs; };
    };

    apps.x86_64-linux = let
      scripts = nixpkgs.legacyPackages.x86_64-linux.callPackage ./scripts { inherit self; };
    in {
      container = {
        type = "app";
        program = toString scripts.run-container;
      };
    };

    defaultPackage = builtins.mapAttrs (system: _:
      let
        pkgs = import nixpkgs {
          config.allowUnfree = true;
          inherit system;
        };
      in pkgs.buildEnv {
        name = "pentesting-tools";
        paths = import ./pkgs.nix pkgs;
      }) nixpkgs.legacyPackages;
  };
}
