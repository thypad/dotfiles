-- ~/.config/nvim/init.lua

-- This is the bootstrap code for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load core settings
require("core.options")
require("core.keymaps")

-- Tell lazy.nvim to load all files from our `lua/plugins/` directory
require("lazy").setup("plugins")
vim.opt.clipboard = 'unnamedplus'
