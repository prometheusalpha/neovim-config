require("bufferline").setup({
  options = {
    diagnostics = "lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "Files",
        text_align = "left",
        separator = true,
      },
    },
  },
})

require("lualine").setup({
  options = {
    theme = "ayu_mirage",
  },
})

require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  renderer = {
    indent_width = 1,
    group_empty = true,
    root_folder_modifier = ":t",
    icons = {
      padding = " ",
      show = {
        file = true,
        folder = true,
        folder_arrow = false,
      },
    },
  },
  view = {
    width = "25%",
    -- adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
})
