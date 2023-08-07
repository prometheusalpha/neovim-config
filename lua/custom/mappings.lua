---@type MappingsTable
local M = {}

M.general = {
  ["v"] = {
    ["<F4>"] = { "<CMD>lua vim.lsp.buf.code_action()<cr>", "View code actions" },
  },
  ["n"] = {
    ["P"] = { "o<Esc>p" },
    ["c."] = { "v$c" },
    ["d."] = { "v$d" },

    ["0"] = { "^" },
    ["."] = { "$" },
    [","] = { "." },
    [";"] = { ":" },
    ["<Space>"] = { "zz", "Center cursor to middle" },
    ["="] = { "}" },
    ["-"] = { "{" },

    -- buffer
    ["gn"] = { ":bnext<cr>" },
    ["gp"] = { ":bprev<cr>" },
    ["co"] = { ':%bdelete!|edit #|bd#|normal`"|NvimTreeFocus<cr>' },
    ["cc"] = { ":bd|bnext<cr>" },

    -- LSP
    ["<Leader>r"] = { "<CMD>lua vim.lsp.buf.rename()<cr>" },
    ["<F4>"] = { "<CMD>lua vim.lsp.buf.code_action()<cr>", "View code actions" },

    -- Telescope
    ["<Leader><Leader>"] = { ":Telescope find_files hidden=true <cr>", "Find files" },
    ["<Leader>fp"] = { ":Telescope projects <cr>" },

    -- NvimTree
    ["<C-b>"] = { ":NvimTreeToggle<cr>" },
    ["<C-l>"] = { ":NvimTreeFocus<cr>" },
    ["<Leader>fc"] = { ":NvimTreeFindFile<cr>" },

    -- Terminal
    ["<Leader>t"] = { ":term<cr>" },

    ["<C-`>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
    ["<F2>"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },
  },
  ["i"] = {
    ["<up>"] = {
      function()
        local cmp = require "cmp"
        if cmp.visible() then
          cmp.select_prev_item()
        elseif require("luasnip").jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
        end
      end,
    },
    ["<down>"] = {
      function()
        local cmp = require "cmp"
        if cmp.visible() then
          cmp.select_next_item()
        elseif require("luasnip").expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
        end
      end,
    },
  },
}
-- more keybinds!

return M
