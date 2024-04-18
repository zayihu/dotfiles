return {
	"stevearc/conform.nvim",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_fix", "ruff_format" },
			javascript = { "prettierd --tab-width 4" },
			javascriptreact = { "prettierd --tab-width 4" },
			typescript = { "prettierd --tab-width 4" },
			typescriptreact = { "prettierd --tab-width 4" },
			json = { "prettierd --tab-width 4" },
			css = { "prettierd --tab-width 4" },
			html = { "prettierd --tab-width 4" },
			php = { "php_cs_fixer" },
		},
		format_on_save = {
			timeout_ms = 1000,
			lsp_fallback = true,
		},
	},
}
