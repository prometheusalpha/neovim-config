vim.cmd("command! -nargs=0 RS :lua require(\"util\").source()")
vim.cmd("command! -nargs=0 PI PlugInstall")
