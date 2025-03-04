{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs = {
    gnome-tweaks.enable = true;
    kanagawa-gtk-theme.enable = true;
    kanagawa-icon-theme.enable = true;
    dconf = {
      enable = true;
      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
    };
  };

}
