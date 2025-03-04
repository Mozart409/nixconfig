{
  config,
  lib,
  pkgs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    pkgs.gnome-tweaks
    pkgs.dconf
    pkgs.kanagawa-gtk-theme
    pkgs.kanagawa-icon-theme
  ];

  programs.dconf = {
    enable = true;
    settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };

}
