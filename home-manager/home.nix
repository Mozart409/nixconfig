# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    outputs.homeManagerModules.tmux
    outputs.homeManagerModules.gnome
    outputs.homeManagerModules.nixvim
    #    outputs.homeManagerModules.nvim
    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  home = {
    username = "amadeus";
    homeDirectory = "/home/amadeus";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [
    heroic
    steam-devices-udev-rules
    logitech-udev-rules
    game-devices-udev-rules
    udev-block-notify

    lazygit
    rustup
    cargo-watch
    cargo-workspaces
    dioxus-cli

    d2

    devenv

    libreoffice-qt6-fresh

    vim
    nh
    treefmt
    yamlfmt
    taplo
    ungoogled-chromium
    firefox
    tor
    tor-browser

    hcloud
    jq
    gnused
    jq

    signal-desktop

    # password managers
    bitwarden-cli
    bitwarden-desktop
    proton-pass
    neofetch
    nnn # terminal file manager

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    eza # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder
    fd # A better find alternative

    # networking tools
    mtr # A network diagnostic tool
    iperf3
    dnsutils # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc # it is a calculator for the IPv4/v6 addresses

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # productivity
    hugo # static site generator
    glow # markdown previewer in terminal

    btop # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb

    ladybird

    wget
    curl
    shfmt
    just

    xclip
    wl-clipboard

    nodejs_22
    pnpm_10
    ni

    dprint

    perl

    python314

    ruby_3_4

    lua
    luajitPackages.luarocks
    go_1_22
    goa

    openrgb-with-all-plugins

    gnome-tweaks
    dconf-editor
    gamemode

    lefthook
    rustscan

    fahclient

    nix-ld
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # programs.nix-ld.libraries = with pkgs; [
  # Add any missing dynamic libraries for unpackaged programs
  # here, NOT in environment.systemPackages
  # ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autocd = true;
    zprof.enable = false;
    historySubstringSearch.enable = true;
    syntaxHighlighting = {
      enable = true;
    };
    autosuggestion = {
      enable = true;
    };
    oh-my-zsh = {
      enable = true;
      # theme = "wezm";
      theme = "tonotdo";
    };

    # set some aliases, feel free to add more or remove some
    shellAliases = {
      l = "ls -lah";
      lg = "lazygit";
      ld = "lazydocker";
      k = "kubectl";
      flk = "cd ~/nixconfig/";
      dps = "docker compose ps";
      dup = "docker compose up -d --build --remove-orphans";
      dwn = "docker compose down";
    };
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };
  programs.k9s = {
    enable = true;
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.git = {
    enable = true;
    userName = "Mozart409";
    userEmail = "amadeus@mozart409.com";
    ignores = [
      "*~"
      "*.swp"
    ];
    aliases = {
      ci = "commit";
      s = "status";
      f = "fetch";
    };
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = "true";
      credential = {
        helper = "oauth";
        cache = "--timeout 21600";
      };
    };
  };

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
