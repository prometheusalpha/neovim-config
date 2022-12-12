require("util")


local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map("n","gd","<Plug>(coc-definition)")
map("n","gD","<Plug>(coc-implementation)")
map("n","gr","<Plug>(coc-references)")
map("n","<Leader>r","<Plug>(coc-rename)")
map("n", "K", "<CMD>lua _G.show_docs()<CR>", {silent = true})
map("n", "<Leader>o", ":CocCommand java.action.organizeImports<CR>", {silent = true})
map("i","<CR>",[[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
map("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
