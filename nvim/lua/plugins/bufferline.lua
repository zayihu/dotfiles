return {
	"akinsho/bufferline.nvim",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		{
			"echasnovski/mini.bufremove",
			version = false,
		},
	},
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			close_command = function(n)
				require("mini.bufremove").delete(n, false)
			end,
			offsets = { {
				filetype = "NvimTree",
				text = "Explorer",
				text_align = "center",
			} },
			mode = "buffers",
			always_show_bufferline = false,
		},
	},
}
