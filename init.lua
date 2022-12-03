require("plugins")
require("config")
require("keymap")
require("telescope_plugin")
require("term_plugin")
require("window_plugin")
require("prettier_plugin")
require("comment_plugin")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.cmd('command! -nargs=0 RS :source $MYVIMRC')
vim.cmd('command! -nargs=0 PI :PlugInstall')
