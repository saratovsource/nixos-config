{ config, pkgs, ... }:
let
  secrets = (import ../../../../private/secrets.nix);
in
{
  home-manager.users.${secrets.username}.home.packages = with pkgs; [
    # browsers
    google-chrome
    firefox

    # file managers
    ranger # shell
    gnome3.nautilus # gui
    mucommander

    # Unzippers
    unzip

    # viewers
    zathura # PDF
    feh # image viewer

    # screenshots
    shutter

    # misc
    bat

    # Diff
    gnome3.meld

    # Video player
    vlc

    #terminals
    alacritty
    rxvt_unicode
  ];
}
