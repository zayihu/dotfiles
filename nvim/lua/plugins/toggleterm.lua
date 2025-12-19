return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	version = "*",
	config = function()
		require("toggleterm").setup({
			shading_factor = 0, -- use theme background
		})
	end,
	keys = {
		{ "<leader>1", "<cmd>ToggleTerm 1 size=12 direction=horizontal<cr>" },
		{ "<leader>2", "<cmd>ToggleTerm 2 size=12 direction=horizontal<cr>" },
		{ "<leader>3", "<cmd>ToggleTerm 3 size=12 direction=horizontal<cr>" },
	},
}
