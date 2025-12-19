return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
	},
	config = function()
		require("neo-tree").setup({
			popup_border_style = "rounded",
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
			default_component_configs = {
				indent = {
					indent_size = 2,
					padding = 0,
					with_markers = false,
					highlight = "NeoTreeIndentMarker",
					with_expanders = true,
					expander_highlight = "NeoTreeExpander",
					expander_collapsed = "",
					expander_expanded = "",
				},
				git_status = {
					symbols = {
						added = "✚",
						modified = "",
						deleted = "✖",
						renamed = "󰁕",
						untracked = "★",
						ignored = "",
						unstaged = "✗",
						staged = "✓",
						conflict = "",
					},
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
				},
				follow_current_file = {
					enabled = true,
				},
				use_libuv_file_watcher = true,
			},
			window = {
				position = "left",
				width = 33,
				mappings = {
					["y"] = "none",
				},
			},
		})
	end,
}
