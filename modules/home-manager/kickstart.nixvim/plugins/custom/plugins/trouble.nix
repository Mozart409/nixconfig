{
  programs.nixvim = {
    plugins = {
      trouble = {
        enable = true;
        keymaps = [
          {
            mode = "";
            key = "<leader>xx";
            action = "<cmd>Trouble diagnostics toggle<cr>";
            # action.__raw = ''
            #   function()
            #     require('Trouble').format { async = true, lsp_fallback = true }
            #   end
            # '';
            options = {
              desc = "Diagnostics (Trouble)";
            };
          }
          {
            mode = "";
            key = "<leader>xX";
            action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
            options = {
              desc = "Buffer Diagnostics (Trouble)";
            };
          }
          {
            mode = "";
            key = "<leader>cs";
            action = "<cmd>Trouble symbols toggle focus=false<cr>";
            options = {
              desc = "Symbols (Trouble)";
            };
          }
          {
            mode = "";
            key = "<leader>xL";
            action = "<cmd>Trouble loclist toggle<cr>";
            options = {
              desc = "Location List(Trouble)";
            };
          }
          {
            mode = "";
            key = "<leader>xQ";
            action = "<cmd>Trouble qflist toggle<cr>";
            options = {
              desc = "Quickfix List(Trouble)";
            };
          }
        ];
        settings = {
          auto_refresh = true;
          focus = true;
        };
      };
    };
  };
}
