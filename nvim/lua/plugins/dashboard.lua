return {
	"nvimdev/dashboard-nvim",
	config = function()
		require("dashboard").setup({
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{
						desc = "󰚰 Update",
						group = "Label",
						action = "Lazy update",
						key = "u",
					},
					{
						desc = " Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Sessions",
						group = "Label",
						action = require("auto-session.session-lens").search_session,
						key = "s",
					},
				},
				packages = { enable = true },
				project = { enable = false },
			},
		})
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
