{
  files = let
    tab2spaces = {
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;
    };
    
    tab4spaces = {
      expandtab = true;
      shiftwidth = 4;
      tabstop = 4;
      softtabstop = 4;
    };
  in {
    "ftplugin/python.lua" = { opts = tab4spaces; };
    "ftplugin/rust.lua" = { opts = tab4spaces; };
    "ftplugin/nix.lua" = { opts = tab2spaces; };
    "ftplugin/svelte.lua" = { opts = tab2spaces; };
    "ftplugin/typescript.lua" = { opts = tab2spaces; };
    "ftplugin/typescriptreact.lua" = { opts = tab2spaces; };
    "ftplugin/javascript.lua" = { opts = tab2spaces; };
    "ftplugin/javascriptreact.lua" = { opts = tab2spaces; };
    "ftplugin/json.lua" = { opts = tab2spaces; };
    "ftplugin/jsonc.lua" = { opts = tab2spaces; };
    "ftplugin/html.lua" = { opts = tab2spaces; };
    "ftplugin/css.lua" = { opts = tab2spaces; };
    "ftplugin/scss.lua" = { opts = tab2spaces; };
  };
}
