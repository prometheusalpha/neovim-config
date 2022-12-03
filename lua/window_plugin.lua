require("util")

map("n", "<Leader>b", ":NvimTreeToggle<cr>", { silent = true })
require("nvim-tree").setup({
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	renderer = {
		group_empty = true,
	},
})
require("leap").add_default_mappings()
require("auto-save").setup()
require("nvim-treesitter.configs").setup({
	highlight = { enable = true },
	incremental_selection = { enable = true },
	textobjects = { enable = true },
})
