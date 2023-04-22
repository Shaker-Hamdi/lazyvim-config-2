
return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },
  {"EdenEast/nightfox.nvim"},

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = "nightfox",
    },
  }
}
