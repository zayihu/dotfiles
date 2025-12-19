return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		default_file_explorer = false,
		columns = {
			"icon",
		},
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["<C-h>"] = "none",
			["<C-g>"] = { "actions.select", opts = { horizontal = true } },
		},
	},
	dependencies = { { "nvim-mini/mini.icons" } },
	lazy = false,
}
