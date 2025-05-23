# Add your reusable home-manager modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  # List your module files here
  # my-module = import ./my-module.nix;
  tmux = import ./tmux.nix;
  plasma = import ./plasma.nix;
  # gnome = import ./gnome.nix;
  nixvim = import ./kickstart.nixvim/nixvim.nix;
}
