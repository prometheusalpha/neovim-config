local util = require("util")
local keymaps = {
  ["x"] = {
    ["0"] = "^",
    ["."] = "$",
    ["<Space>"] = "zz",
    ["="] = "}",
    ["-"] = "{",
    ["<leader>/"] = ":CommentToggle<cr>",
  },
  ["n"] = {
    ["P"] = "o<Esc>p",
    ["c."] = "v$c",
    ["d."] = "v$d",

    -- buffer
    ["gn"] = ":bnext<cr>",
    ["gp"] = ":bprev<cr>",
    ["co"] = ':%bdelete!|edit #|bd#|normal`"|NvimTreeFocus<cr>',
    ["cc"] = ":bd<cr>",

    -- LSP
    ["<Leader>f"] = "<CMD>silent exec \"LspZeroFormat\"<cr>",
    ["<Leader>r"] = "<CMD>lua vim.lsp.buf.rename()<cr>",

    -- Telescope
    ["<Leader><Leader>"] = ":Telescope find_files hidden=true <cr>",
    ["<Leader>p"] = ":Telescope projects <cr>",
    ["<Leader>g"] = ":Telescope live_grep <cr>",

    -- NvimTree
    ["<Leader>b"] = ":NvimTreeToggle<cr>",
    ["<Leader>e"] = ":NvimTreeFocus<cr>",

    -- Terminal
    ["<Leader>t"] = ":term<cr>",
  },
  ["v"] = {
    ["\""] = "c\"\"<Esc>hp",
  }
}

util.mapAll(keymaps)
