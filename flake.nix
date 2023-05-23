{
    inputs = {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
      flake-utils.url = github:numtide/flake-utils;

      nixos-generators = {
        url = "github:nix-community/nixos-generators";
        inputs.nixpkgs.follows = "nixpkgs";
      };
    };

    outputs = inputs @ {  self
                        , nixpkgs
                        , flake-utils
                        , nixos-generators
    }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in 
    {
      packages.x86_64-linux.default = pkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      };
    };
}
