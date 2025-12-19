return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	opts = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
		match = {
			enable = true,
		},
		auto_install = true,
		ensure_installed = {
			"html",
			"css",
			"typescript",
			"tsx",
			"regex",
			"javascript",
			"python",
			"php",
			"json",
			"markdown",
			"markdown_inline",
			"yaml",
			"lua",
			"glsl",
			"bash",
			"gitignore",
			"rust",
			"sql",
			"liquid",
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
