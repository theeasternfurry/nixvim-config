{
  # Import all your configuration modules here
  imports = [
    ./modules/plugins/avante.nix
    ./modules/plugins/blink-cmp.nix
    ./modules/plugins/bufferline.nix
    ./modules/plugins/fzf-lua.nix
    ./modules/plugins/gitsigns.nix
    ./modules/plugins/indent-blankline.nix
    ./modules/plugins/lsp.nix
    ./modules/plugins/lualine.nix
    ./modules/plugins/render-markdown.nix
    ./modules/plugins/treesitter.nix
    ./modules/plugins/trouble.nix
    ./modules/plugins/tv.nix
    ./modules/plugins/which-key.nix
    ./modules/plugins/yazi.nix

    ./keymaps.nix
    ./files.nix
    ./options.nix
  ];
}
