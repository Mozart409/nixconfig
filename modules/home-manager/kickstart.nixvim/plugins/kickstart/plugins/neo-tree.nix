{
  programs.nixvim = {
    # Neo-tree is a Neovim plugin to browse the file system
    # https://nix-community.github.io/nixvim/plugins/neo-tree/index.html?highlight=neo-tree#pluginsneo-treepackage
    plugins.neo-tree = {
      enable = true;
      # auto_open = false;
      addBlankLineAtTop = true;
      autoCleanAfterSessionRestore = true;
      closeIfLastWindow = true;
      extraOptions = {
        auto_open = false;
      };
      filesystem = {
        window = {
          mappings = {
            "\\" = "close_window";
          };
        };
      };
    };

    # https://nix-community.github.io/nixvim/keymaps/index.html
    keymaps = [
      {
        key = "<leader>fe";
        action = "<cmd>Neotree reveal<cr>";
        options = {
          desc = "NeoTree reveal";
        };
      }
    ];
  };
}
