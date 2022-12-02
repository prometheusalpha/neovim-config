require("util")

map("n","gn",":bnext<cr>")
map("n","gp",":bprev<cr>")
map("n","co",":%bdelete|edit #|normal`\"<cr>")
map("n","gd","<Plug>(coc-definition)")
map("n","gD","<Plug>(coc-implementation)")
map("n","gr","<Plug>(coc-references)")
map("n","<Leader>r","<Plug>(coc-rename)")

map("n", "K", "<CMD>lua _G.show_docs()<CR>", {silent = true})
map("n", "<Leader>o", ":CocCommand java.action.organizeImports<CR>", {silent = true})

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map("i","<CR>",[[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
map("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
map("n", "<Leader>b", ":NvimTreeToggle<cr>", {silent = true})

require("nvim-tree").setup({
  renderer = {
    group_empty = true
  }
})
require("bufferline").setup()
require("leap").add_default_mappings()
require("auto-save").setup()
require("nvim-treesitter.configs").setup {
    -- Modules and its options go here
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
}
require("project_nvim").setup {

}
