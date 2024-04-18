return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("todo-comments").setup()
	end,
	keys = {
		{
			"<leader>xx",
			function()
				require("todo-comments").jump_prev()
			end,
			desc = "Previous TODO",
		},
		{
			"<leader>xw",
			function()
				require("todo-comments").jump_next()
			end,
			desc = "Next TODO",
		},
	},
}
