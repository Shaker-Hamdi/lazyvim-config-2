
return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },
  {"EdenEast/nightfox.nvim"},

  { 'projekt0n/github-nvim-theme' },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = "nightfox",
      -- colorscheme = "github_dark",
      -- colorscheme = "catppuccin"
    },
  }

}
