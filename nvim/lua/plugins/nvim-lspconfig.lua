local on_attach = function(client, bufnr)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { silent = true })
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
	vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { desc = "Signature help" })
	vim.keymap.set("n", "gd", function()
		require("telescope.builtin").lsp_definitions()
	end, { desc = "Goto Definition" })
	vim.keymap.set("n", "gr", function()
		require("telescope.builtin").lsp_references()
	end, { desc = "Goto References" })
	vim.keymap.set("n", "gI", function()
		require("telescope.builtin").lsp_implementations()
	end, { desc = "Goto Implementation" })
	vim.keymap.set("n", "gy", function()
		require("telescope.builtin").lsp_type_definitions()
	end, { desc = "Goto Type Definition" })
end

local function mergeTables(t1, t2)
	for k, v in pairs(t2) do
		t1[k] = v
	end
	return t1
end

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

		local servers = {
			lua_ls = {},
			phpactor = {
				root_dir = function(_)
					return vim.loop.cwd()
				end,
				init_options = {
					["language_server_phpstan.enabled"] = false,
					["language_server_psalm.enabled"] = false,
				},
			},
			vtsls = {
				settings = {
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
						on_attach = on_attach,
					}

					local settings = servers[server]
					local setup_opts = default

					if settings ~= nil then
						setup_opts = mergeTables(setup_opts, settings)
					end

					require("lspconfig")[server].setup(setup_opts)
				end,
			},
		})
	end,
}
