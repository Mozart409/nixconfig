{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.tailscale-systray = {
    enable = true;
  };

  services.tailscale.enable = true;

}
