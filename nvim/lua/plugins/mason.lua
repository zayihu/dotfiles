return {
	"williamboman/mason.nvim",
	lazy = true,
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
}
