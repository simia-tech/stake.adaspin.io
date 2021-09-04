{ pkgs ? import <nixpkgs> {} }:
let
  unstable = import (fetchTarball https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz) { };
in
  pkgs.stdenvNoCC.mkDerivation {
    name = "dev-environment";
    buildInputs = [
      pkgs.zola
    ];
  }
