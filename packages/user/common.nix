{ config, pkgs, ... }:
let
  secrets = (import ../../private/secrets.nix);
in
{
  imports =
  [
    # Programs
    ./git.nix
    ./fish.nix
    ./gnupg.nix
  ];
  home-manager.users.${secrets.username}.home.packages = with pkgs; [
    gnupg
    pass
    keybase
  ];
}
