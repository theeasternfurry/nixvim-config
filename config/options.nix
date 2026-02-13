{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  opts = {
    # Line numbers
    number = true;
    relativenumber = false;

    # Enable more colors (24-bit)
    termguicolors = true;

    # Highlight current line
    cursorline = true;

    # Highlight on search
    hlsearch = true;

    # No folding by default
    foldlevel = 99;
    foldlevelstart = 99;
  };
  colorschemes.rose-pine.enable = true;
  clipboard.providers.wl-copy.enable = true;
}
