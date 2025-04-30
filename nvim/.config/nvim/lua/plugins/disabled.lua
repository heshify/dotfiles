return {

  -- UI
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = true },

  { "nvim-lualine/lualine.nvim", enabled = true },
  -- editor
  { "folke/flash.nvim", enabled = false },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
  },
  {
    "lewis6991/gitsigns.nvim",
    enabled = false,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = false },
      explorer = { enabled = false },
      indent = { enabled = true },
      input = { enabled = false },
      picker = { enabled = false },
      notifier = { enabled = true },
      quickfile = { enabled = false },
      scope = { enabled = false },
      scroll = { enabled = false },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },
}
