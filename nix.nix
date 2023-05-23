{ config, pkgs, ... }:
let
    substituters = [
        # Binary Cache for Haskell.nix
        "https://cache.iog.io"
        "https://cache.zw3rk.com"
        
        # Lean4 Theorem Prover
        "https://lean4.cachix.org/"

        # nix-community
        "https://nix-community.cachix.org"

        # garnix.io
        "https://cache.garnix.io"
    ];

    trusted-public-keys = [
        # Binary Cache for Haskell.nix
        "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="
        "loony-tools:pr9m4BkM/5/eSTZlkQyRt57Jz7OMBxNSUiMC4FkcNfk="
        
        # Lean4 Theorem Prover
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        "lean4.cachix.org-1:mawtxSxcaiWE24xCXXgh3qnvlTkyU7evRRnGeAhD4Wk="

        # nix-community
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="

        # garnix.io
        "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
    ];
in
{
    nix.package = pkgs.nix;
    nix.gc.automatic = true;
    nix.nrBuildUsers = 16;

    nix.settings.experimental-features = "nix-command flakes";
    nix.settings.max-jobs = "auto";
    nix.settings.keep-outputs = true;
    nix.settings.keep-derivations = true;
    
    nix.settings.trusted-public-keys = trusted-public-keys;
    nix.settings.substituters = substituters;
    nix.settings.trusted-substituters = substituters;
}