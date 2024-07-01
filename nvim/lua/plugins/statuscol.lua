return {
	"luukvbaal/statuscol.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = function()
		local builtin = require("statuscol.builtin")
		return {
			setopt = true,
			segments = {
				{ text = { "%s" }, click = "v:lua.ScSa" },
				{ text = { builtin.foldfunc, " " }, click = "v:lua.ScFa" },
				{
					text = { builtin.lnumfunc, " " },
					condition = { true, builtin.not_empty },
					click = "v:lua.ScLa",
				},
			},
		}
	end,
}
