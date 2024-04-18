return {
	"SmiteshP/nvim-navic",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	opts = {
		highlight = true,
	},
	config = function(_, opts)
		require("nvim-navic").setup(opts)
	end,
}
