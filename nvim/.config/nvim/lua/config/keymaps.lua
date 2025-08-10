-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")

-- enter new line without entering insert mode
vim.keymap.set("n", "<leader>o", "o <Esc>")
vim.keymap.set("n", "<leader>O", "O <Esc>")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- For some reasons <tab> is mapped to <anonymous>
vim.keymap.del("i", "<tab>")

--  === Compile and Run Current File with <F5> ===
function CompileRunFile()
  local filetype = vim.bo.filetype
  local filename = vim.fn.expand("%")
  local filename_no_ext = vim.fn.expand("%:r")

  vim.cmd("write")

  if filetype == "c" then
    vim.cmd("!gcc " .. filename .. " -o " .. filename_no_ext .. " && ./" .. filename_no_ext)
  elseif filetype == "cpp" then
    vim.cmd("!g++ " .. filename .. " -o " .. filename_no_ext .. " && ./" .. filename_no_ext)
  elseif filetype == "python" then
    vim.cmd("!python3 " .. filename)
  elseif filetype == "rust" then
    vim.cmd("!cargo run")
  elseif filetype == "go" then
    vim.cmd("!go run " .. filename)
  elseif filetype == "javascript" then
    vim.cmd("!node " .. filename)
  elseif filetype == "typescript" then
    vim.cmd("!ts-node " .. filename)
  else
    print("No compile-and-run rule for filetype: " .. filetype)
  end
end

vim.keymap.set("n", "<F5>", CompileRunFile, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>r", CompileRunFile, { noremap = true, silent = true })
