-- Лидеры
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.tabstop = 2       -- сколько пробелов отображает <Tab>
vim.opt.shiftwidth = 2    -- сколько пробелов использовать при автоотступе

-- Базовые опции (минимум)
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Подключаем будущие плагины из lua/user/plugins/**
require("lazy").setup("user.plugins")
require("user.keymaps")
require("user.lsp")
