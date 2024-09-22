return {

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[

mmmmmmmm▄▄▄██████▀▀██████▄▄▄mmmmmmmm
mmmm▄███▀█▄mmmmm▄mm▄mmmmm▄█▀███▄mmmm
mm██▀█▄████mmmmm████mmmmm████▄█▀██mm
▄█▀▄███████▄▄m▄▄████▄▄m▄▄███████▄▀█▄
██m████████████Mahesh████████████m██
██m██████████████████████████████m██
▀██▀████▀m▀▀█▀m▀▀██▀▀m▀█▀▀m▀████▀██▀
mm██▄█▀█▄mmmmmmmm▀▀mmmmmmmm▄█▀█▄██mm
mmmm▀███▄▄▄mmmmmmmmmmmmmm▄▄▄███▀mmmm
mmmmmmmm▀▀▀██████████████▀▀▀mmmmmmmm
 ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
