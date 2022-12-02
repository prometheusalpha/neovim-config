local o = vim.o
local wo = vim.wo
local cmd = vim.cmd

o.hlsearch = true
o.incsearch = true
o.tabstop = 2
wo.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
o.cursorline = true
o.expandtab = true
o.termguicolors = true
o.shiftwidth = 2
o.shell = "/usr/bin/zsh"

