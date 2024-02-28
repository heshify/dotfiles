return {
  "theprimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
    { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
    { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
    { "<leader>he", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
    { "<leader>hh", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Navigate to file 1" },
    { "<leader>hj", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Navigate to file 2" },
    { "<leader>hk", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Navigate to file 3" },
    { "<leader>hl", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Navigate to file 4" },
  },
}
