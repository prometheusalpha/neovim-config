local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")
-- Editor
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("nvim-tree/nvim-web-devicons")
Plug("akinsho/bufferline.nvim", { tag = "v3.*" })
Plug("nvim-lualine/lualine.nvim")
Plug("nvim-tree/nvim-tree.lua")
Plug("Pocco81/auto-save.nvim")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("goolord/alpha-nvim")
Plug("github/copilot.vim")
-- Theme
Plug("sainnhe/everforest")
-- Telescope
Plug("BurntSushi/ripgrep")
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim", { tag = "0.1.0" })
Plug("ahmedkhalf/project.nvim")
-- Language
Plug("terrortylor/nvim-comment")
Plug("uiiaoo/java-syntax.vim")
-- Navigate
Plug("ggandor/leap.nvim")
Plug("gcmt/wildfire.vim")
-- Git
Plug("lewis6991/gitsigns.nvim")
-- LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
-- Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
--  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'
vim.call("plug#end")
