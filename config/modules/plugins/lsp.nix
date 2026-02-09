{
  plugins.lsp = {
    enable = true;
    servers = {
      docker_language_server.enable = true;
      nil_ls.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      svelte.enable = true;
      ts_ls.enable = true;
      ty.enable = true;
    };
  };
}
