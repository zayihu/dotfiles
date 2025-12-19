return {
	"mason-org/mason-lspconfig.nvim",
	event = "VeryLazy",
	opts = { automatic_enable = true },
	dependencies = {
		{
			"mason-org/mason.nvim",
			event = "VeryLazy",
			cmd = { "Mason" },
			opts = {
				ensure_installed = {
					"stylua",
					"prettierd",
					"ruff",
					"eslint_d",
					"stylelint",
					"php-cs-fixer",
					"phpstan",
					"markdown-oxide",
					"basedpyright",
					"phpactor",
					"vtsls",
					"html-lsp",
					"css-lsp",
					"lua-language-server",
					"rust-analyzer",
				},
			},
			config = function(_, opts)
				require("mason").setup(opts)
				local mr = require("mason-registry")
				for _, tool in ipairs(opts.ensure_installed) do
					local p = mr.get_package(tool)
					if not p:is_installed() then
						p:install()
					end
				end
			end,
		},
		"neovim/nvim-lspconfig",
	},
}
