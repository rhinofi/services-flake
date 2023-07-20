{ pkgs, lib, ... }:
let
  inherit (import ./lib.nix { inherit pkgs lib; }) multiService;
in {
  imports = builtins.map multiService [
    ./postgres.nix
    ./redis.nix
  ];
}
