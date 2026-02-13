{
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Yazi<cr>";
      options = {
        desc = "Open Yazi (File Manager)";
      };
    }
    {
      mode = ["x" "v"];
      key = "<Tab>";
      action = ">gv";
      options.desc = "Indent right";
    }
    {
      mode = ["x" "v"];
      key = "<S-Tab>";
      action = "<gv"; 
      options.desc = "Indent left";
    }
  ];
}
