return {
	"brenoprata10/nvim-highlight-colors",
	opts = {
		render = "virtual",
	},
	config = function(_, opts)
		require("nvim-highlight-colors").setup(opts)
	end,
}
