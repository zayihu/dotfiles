local g = vim.g
local o = vim.opt

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.mapleader = " "

o.mouse = ""
o.termguicolors = true
o.relativenumber = true
o.number = true
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true
o.wrap = false
o.linebreak = true
o.virtualedit = "block"
o.formatexpr = "v:lua.require('conform').formatexpr()"
o.clipboard = "unnamedplus"
o.laststatus = 3
o.updatetime = 200
o.showmode = false
o.smoothscroll = true
o.shortmess:append({ W = true, I = true, c = true, C = true })
o.cursorline = false
o.completeopt = "menu,menuone,noselect"
o.wildmode = "longest:full,full"
o.undofile = true
o.undolevels = 10000
o.foldtext = ""
o.foldmethod = "expr"
o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.foldcolumn = "0"
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true
o.fillchars = {
	eob = " ",
	fold = " ",
	foldopen = "",
	foldsep = " ",
	foldclose = "",
}

vim.diagnostic.config({
	virtual_lines = { current_line = true },
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
	update_in_insert = true,
	underline = true,
})
