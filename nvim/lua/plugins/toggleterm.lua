return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	version = "*",
	config = true,
	keys = {
		{ "<leader>1", "<cmd>ToggleTerm 1 size=14 direction=horizontal<cr>" },
		{ "<leader>2", "<cmd>ToggleTerm 2 size=14 direction=horizontal<cr>" },
		{ "<leader>3", "<cmd>ToggleTerm 3 size=14 direction=horizontal<cr>" },
	},
}
