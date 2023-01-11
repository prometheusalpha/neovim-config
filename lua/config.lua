local o = vim.o
local wo = vim.wo
local g = vim.g
local opt = vim.opt

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

o.hlsearch = true
o.incsearch = true

o.tabstop = 2
o.shiftwidth = 2
o.cursorline = true
o.cursorcolumn = true
wo.number = true
o.expandtab = true

opt.relativenumber = true
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.showmode = false
opt.list = true
o.shell = "/usr/bin/zsh"

opt.ignorecase = true
opt.smartcase = true

