return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 36,
		},
		filters = {
			dotfiles = false,
		},
		git = {
			ignore = false,
		},
	},
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer Toggle" },
		{ "<leader>ef", "<cmd>NvimTreeFocus<cr>", desc = "Explorer Focus" },
	},
}
