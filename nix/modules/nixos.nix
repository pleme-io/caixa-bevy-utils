# nix/modules/nixos.nix — auto-generated from bevy_utils.caixa.lisp
# description: "A collection of utils for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_utils;
in {
  options.services.bevy_utils = {
    enable = lib.mkEnableOption "bevy_utils";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_utils or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
