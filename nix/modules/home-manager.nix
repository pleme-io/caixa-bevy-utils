# nix/modules/home-manager.nix — auto-generated from bevy_utils.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_utils; in {
  options.programs.bevy_utils = {
    enable = lib.mkEnableOption "bevy_utils";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_utils or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
