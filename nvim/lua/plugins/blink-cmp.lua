return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",
	opts = {
		keymap = { preset = "enter" },

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		completion = {
			ghost_text = {
				enabled = true,
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer", "omni" },
		},

		cmdline = {
			keymap = { preset = "inherit" },
			completion = { menu = { auto_show = true } },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
}
