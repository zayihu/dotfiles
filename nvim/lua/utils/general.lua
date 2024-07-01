local M = {}

function M.on_lsp_attach(client, bufnr)
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

function M.merge_tables(t1, t2)
	for k, v in pairs(t2) do
		t1[k] = v
	end
	return t1
end

return M
