-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Keep the existing Windows Python provider without hard-coding a username.
local python = vim.env.LOCALAPPDATA and (vim.env.LOCALAPPDATA .. "/Microsoft/WindowsApps/python.exe")
if python and vim.fn.executable(python) == 1 then
  vim.g.python3_host_prog = python
end
vim.opt.shell = "nu"
