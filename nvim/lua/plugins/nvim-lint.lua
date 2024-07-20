return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufWritePost",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			python = { "ruff" },
			css = { "stylelint" },
			php = { "phpstan" },
		}

		local eslint = lint.linters.eslint_d

		table.insert(eslint.args, 1, "--no-warn-ignored")

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
