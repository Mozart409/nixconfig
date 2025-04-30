{
  config,
  lib,
  pkgs,
  ...
}: {
  # gnome-tweaks.enable = true;
  # kanagawa-gtk-theme.enable = true;
  # kanagawa-icon-theme.enable = true;
  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell/extensions/advanced-alt-tab-window-switcher" = {
        app-switcher-popup-fav-apps = false;
        app-switcher-popup-filter = 2;
        app-switcher-popup-include-show-apps-icon = false;
        app-switcher-popup-search-pref-running = true;
        enable-super = false;
        hot-edge-position = 0;
        super-double-press-action = 3;
        super-key-mode = 3;
        switcher-popup-hot-keys = false;
        switcher-popup-interactive-indicators = true;
        switcher-popup-position = 3;
        switcher-popup-timeout = 0;
        switcher-ws-thumbnails = 2;
        win-switcher-popup-filter = 2;
        win-switcher-popup-order = 1;
      };
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        font-antialiasing = "grayscale";
        font-hinting = "slight";
      };
      "org/gnome/desktop/session".idle-delay = 600;
      "org/gnome/mutter".edge-tiling = true;
      "org/gnome/settings-daemon/plugins/color".night-light-schedule-automatic = true;
      "org/gnome/desktop/wm/preferences".button-layout = "minimize,maximize,close";
    };
  };
}
