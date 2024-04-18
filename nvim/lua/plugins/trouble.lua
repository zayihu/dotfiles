local signs = {
	Error = "",
	Warn = "",
	Hint = "",
	Info = "",
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
	underline = true,
	update_in_insert = false,
	virtual_text = {
		spacing = 4,
		source = "if_many",
		prefix = "●",
	},
	severity_sort = true,
})

return {
	"folke/trouble.nvim",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	opts = {},
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Trouble All" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr", desc = "Trouble Workspace Diagnostics" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble Document Diagnostics" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble Quickfix" },
		{ "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Trouble Loclist" },
		{ "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble LSP References" },
	},
}
