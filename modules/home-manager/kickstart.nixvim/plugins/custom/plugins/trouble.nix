{
  programs.nixvim = {
    plugins = {
      trouble = {
        enable = true;

        settings = {
          auto_refresh = true;
          focus = true;
        };
      };
    };
  };
}
