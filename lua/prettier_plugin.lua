require('util')

vim.cmd 'command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument'
map("n", "<Leader>f", ":FormatCode<cr>")

vim.call('glaive#Install')
vim.cmd('Glaive codefmt google_java_executable=\"java -jar /home/prometheus/.config/nvim/google-java-format-1.15.0-all-deps.jar\"')
