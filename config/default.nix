{
  # Import all your configuration modules here
  imports = [
    ./modules/plugins/bufferline.nix
    ./modules/plugins/lsp.nix
    ./modules/plugins/lualine.nix
    ./modules/plugins/treesitter.nix
    ./modules/plugins/yazi.nix

    ./files.nix
    ./options.nix
  ];
}
