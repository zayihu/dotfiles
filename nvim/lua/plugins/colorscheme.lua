return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = { fzf = true, blink_cmp = true, grug_far = true },
		})
		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
