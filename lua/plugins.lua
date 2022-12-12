local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")
-- Editor
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("nvim-tree/nvim-web-devicons")
Plug("akinsho/bufferline.nvim", { ["tag"] = "v3.*" })
Plug("nvim-tree/nvim-tree.lua")
Plug("nvim-lua/popup.nvim")
Plug("nvim-lua/plenary.nvim")
Plug("Pocco81/auto-save.nvim")
Plug("voldikss/vim-floaterm")
-- Theme
Plug 'olivercederborg/poimandres.nvim'
-- Telescope
Plug("BurntSushi/ripgrep")
Plug("nvim-telescope/telescope.nvim", { tag = "0.1.0" })
Plug("nvim-telescope/telescope-file-browser.nvim")
Plug("ahmedkhalf/project.nvim")
-- Language
Plug("neoclide/coc.nvim", { branch = "release" })
Plug("terrortylor/nvim-comment")
Plug("google/vim-maktaba")
Plug("google/vim-codefmt")
Plug("google/vim-glaive")
-- Navigate
Plug("ggandor/leap.nvim")
-- Git
Plug("mhinz/vim-signify")
vim.call("plug#end")
