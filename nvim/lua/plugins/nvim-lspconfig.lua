return {
	"nvim-lspconfig",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("neodev").setup()

		local utils = require("utils.general")

		local servers = {
			jsonls = {
				settings = {
					json = {
						schemas = require("schemastore").json.schemas(),
						validate = { enable = true },
					},
				},
			},
			vtsls = {
				settings = {
					vtsls = {
						enableMoveToFileCodeAction = true,
						autoUseWorkspaceTsdk = true,
						experimental = {
							completion = {
								enableServerSideFuzzyMatch = true,
							},
						},
					},
					typescript = {
						updateImportsOnFileMove = { enabled = "always" },
						suggest = {
							completeFunctionCalls = true,
						},
					},
				},
			},
		}

		require("mason-lspconfig").setup({
			ensure_installed = {
				"html",
				"cssls",
				"vtsls",
				"jsonls",
				"pyright",
				"lua_ls",
				"rust_analyzer",
				"phpactor",
			},
			handlers = {
				function(server)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()

					capabilities.textDocument.foldingRange = {
						dynamicRegistration = false,
						lineFoldingOnly = true,
					}

					local default = {
						capabilities = capabilities,
						on_attach = utils.on_lsp_attach,
					}

					local settings = servers[server]
					local setup_opts = default

					if settings ~= nil then
						setup_opts = utils.merge_tables(setup_opts, settings)
					end

					require("lspconfig")[server].setup(setup_opts)
				end,
			},
		})
	end,
}
