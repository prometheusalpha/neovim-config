require("util")

map("n","<Leader>t",":FloatermNew --name=term --height=0.8 --width=0.6<CR>")
map("n","<Leader>`",":FloatermToggle!<cr>")

vim.cmd[[
  autocmd BufEnter * silent! lcd %:p:h
]]
