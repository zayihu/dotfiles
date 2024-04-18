return {
	"kevinhwang91/nvim-ufo",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	dependencies = {
		"kevinhwang91/promise-async",
		{
			"luukvbaal/statuscol.nvim",
			config = function()
				local statuscol = require("statuscol.builtin")
				require("statuscol").setup({
					relculright = true,
					segments = {
						{ text = { statuscol.foldfunc }, click = "v:lua.ScFa" },
						{ text = { "%s" }, click = "v:lua.ScSa" },
						{ text = { statuscol.lnumfunc, " " }, click = "v:lua.ScLa" },
					},
				})
			end,
		},
	},
	config = function()
		require("ufo").setup()
		vim.keymap.set("n", "zR", require("ufo").openAllFolds)
		vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
		vim.cmd("hi Folded guibg=NONE ctermbg=NONE")
	end,
}
