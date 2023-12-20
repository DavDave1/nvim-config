-- Important: set leader before loading plugins
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load lazy.vim plugin manager and clone if it does not exist.
-- From https://github.com/folke/lazy.nvim
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

-- Load lazy and load all plugins from 'plugins' folder
require("lazy").setup("plugins")

require("options")
require("autocmds")
require("keybindings")
