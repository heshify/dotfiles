return {

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
     .____     _______________   ____.__ 
|    |    \_   _____/\   \ /   /|__|
|    |     |    __)_  \   Y   / |  |
|    |___  |        \  \     /  |  |
|_______ \/_______  /   \___/   |__|
        \/        \/
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
