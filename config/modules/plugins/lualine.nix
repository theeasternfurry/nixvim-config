{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        disabled_filetypes = {
          statusline = [ "avante" "avante-input" "avante-selected" ];
          winbar = [ "avante" "avante-input" "avante-selected" ];
        };
        globalstatus = true; 
      };
    };
  };
}
