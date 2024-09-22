local builtin = require("telescope.builtin")
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>ps", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
    { "<leader>pg", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
}
