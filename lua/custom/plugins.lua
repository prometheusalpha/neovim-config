local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "aca/emmet-ls",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      extensions_list = { "themes", "terms", "projects" },
      defaults = {
        -- layout_strategy = vim.o.lines > 50 and "vertical" or "horizontal",
        layout_strategy = "vertical",
      },
    },
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "gcmt/wildfire.vim",
    ft = { "*" },
  },

  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    config = function()
      require("project_nvim").setup {}
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
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
            folder_arrow = true,
          },
        },
      },
      view = {
        side = "left",
        mappings = {
          list = {
            { key = "u", action = "dir_up" },
          },
        },
      },
    },
  },

  -- Install a plugin
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    ft = { "*" },
    config = function()
      require("auto-save").setup {}
    end,
  },
  {
    "ggandor/leap.nvim",
    ft = { "*" },
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
}

return plugins
