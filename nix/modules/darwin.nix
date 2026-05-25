# nix/modules/darwin.nix — auto-generated from bevy_utils.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_utils; in {
  options.services.bevy_utils = {
    enable = lib.mkEnableOption "bevy_utils";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_utils or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
