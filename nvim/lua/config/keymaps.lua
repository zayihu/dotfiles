local map = vim.keymap.set

map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>silent! w<cr><esc>", { desc = "Save file", silent = true })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Terminal normal mode", silent = true })
map("n", "<C-h>", "<C-W>h", { desc = "Terminal normal mode", silent = true })
map("n", "<C-j>", "<C-W>j", { desc = "Terminal normal mode", silent = true })
map("n", "<C-k>", "<C-W>k", { desc = "Terminal normal mode", silent = true })
map("n", "<C-l>", "<C-W>l", { desc = "Terminal normal mode", silent = true })

local Module = {}

Module.lsp_attach = function(ev)
	local buf = ev.buf
	local keymap = vim.keymap
	local fzf = require("fzf-lua")

	local function map(mode, lhs, rhs, desc)
		keymap.set(mode, lhs, rhs, { buffer = buf, silent = true, desc = desc })
	end

	-- LSP keymaps
	map("n", "gR", fzf.lsp_references, "Show LSP references")
	map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
	map("n", "gd", vim.lsp.buf.definition, "Show LSP definition")
	map("n", "gi", fzf.lsp_implementations, "Show LSP implementations")
	map("n", "gt", fzf.lsp_typedefs, "Show LSP type definitions")
	map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code actions")
	map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
	map("n", "<leader>di", function()
		fzf.diagnostics_document({ bufnr = 0 })
	end, "Buffer diagnostics")
	map("n", "K", vim.lsp.buf.hover, "Hover documentation")
	map("n", "<leader>rs", vim.cmd.LspRestart, "Restart LSP")
end

return Module
