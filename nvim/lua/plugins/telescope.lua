return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
	},
}
