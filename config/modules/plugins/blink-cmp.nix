{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      keymap = {
        preset = "default"; 
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
