return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  { "craftzdog/solarized-osaka.nvim", lazy = false, priority = 1000, opts = {} },
  { "blazkowolf/gruber-darker.nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        italic = false,
        transparency = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = { transparent_mode = true } },
}
