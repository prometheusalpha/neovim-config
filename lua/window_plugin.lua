require("util")

map("n", "<Leader>b", ":NvimTreeFocus<cr>", { silent = true })
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
				folder_arrow = true,
			},
		},
		indent_markers = {
			enable = true,
		},
	},
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
})

require("leap").add_default_mappings()
require("auto-save").setup()
require("nvim-treesitter.configs").setup({
	highlight = { enable = true },
	incremental_selection = { enable = true },
	textobjects = { enable = true },
})

-- vim.keymap.del("n", "gnn")
