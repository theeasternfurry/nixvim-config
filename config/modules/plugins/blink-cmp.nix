{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      keymap = {
        "<C-space>" = [ "show" "show_documentation" "hide_documentation" ];
        "<C-e>" = [ "hide" ];
        "<C-y>" = [ "select_and_accept" ];
        "<C-p>" = [ "select_prev" "fallback" ];
        "<C-n>" = [ "select_next" "fallback" ];
        "<C-b>" = [ "scroll_documentation_up" "fallback" ];
        "<C-f>" = [ "scroll_documentation_down" "fallback" ];
        "<CR>" = [ "accept" ];
        "<Tab>" = [ "select_next" "fallback" ];
        "<S-Tab>" = [ "select_prev" "fallback" ];
      };

      sources = {
        default = [ "lsp" "path" "snippets" "buffer" ];
      };

      appearance = {
        nerd_font_variant = "mono";
      };
    };
  };
}
