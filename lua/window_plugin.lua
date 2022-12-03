require("util")

map("n", "<Leader>b", ":NvimTreeToggle<cr>", {silent = true})
require("nvim-tree").setup({
  renderer = {
    group_empty = true
  }
})
require("leap").add_default_mappings()
require("auto-save").setup()
require("nvim-treesitter.configs").setup {
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
}
