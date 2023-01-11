require("leap").add_default_mappings()
require("auto-save").setup()
require("nvim-treesitter.configs").setup({
  ensure_installed = { "java", "lua" },
  highlight = { enable = true },
  textobjects = { enable = true },
})

require('gitsigns').setup()
