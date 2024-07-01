return {
	"lukas-reineke/indent-blankline.nvim",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	main = "ibl",
	opts = {
		exclude = {
			filetypes = {
				"dashboard",
				"lazy",
				"mason",
				"trouble",
				"Trouble",
				"notify",
				"help",
			},
		},
	},
}
