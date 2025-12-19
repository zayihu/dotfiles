vim.api.nvim_create_autocmd("VimEnter", {
	callback = function(data)
		if vim.fn.isdirectory(data.file) == 1 then
			require("neo-tree.command").execute({ dir = data.file })
			vim.cmd("bdelete #")
		end
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = require("config.keymaps").lsp_attach,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*neo-tree*",
	callback = function()
		local raw = vim.fn.getreg('"')

		if raw == "" then
			return
		end

		local rtype = vim.fn.getregtype('"') or "v"

		local cleaned = raw:gsub("[^%a%d%-_/~%. \n]", "")

		vim.fn.setreg('"', cleaned, rtype)
		pcall(vim.fn.setreg, "+", cleaned, rtype)
	end,
})
