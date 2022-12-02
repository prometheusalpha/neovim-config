require('util')

vim.cmd 'command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument'
map("n", "<Leader>f", ":FormatCode<cr>")

vim.call('glaive#Install')
vim.cmd [[
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType lua AutoFormatBuffer luaformatterfiveone
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue,react AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END
]]

vim.cmd('Glaive codefmt google_java_executable=\"java -jar /home/prometheus/.config/nvim/google-java-format-1.15.0-all-deps.jar\"')
