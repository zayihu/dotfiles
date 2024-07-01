local g = vim.g
local o = vim.opt

g.mapleader = " "
-- numbers in status line
o.relativenumber = true
o.number = true
-- indent and wrap, editing
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true
o.wrap = false
o.linebreak = true
o.virtualedit = "block"
-- sync system clipboard with nvim
o.clipboard = "unnamedplus"
--global status line
o.laststatus = 3
-- sync update with disk time
o.updatetime = 200
o.showmode = false
o.smoothscroll = true
-- hide nvim default start screen
o.shortmess:append("sI")
-- highlight cursor line
o.cursorline = true
-- undo
o.undofile = true
o.undolevels = 10000
-- folding
o.foldtext = ""
o.foldmethod = "expr"
o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.foldcolumn = "1"
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true
o.fillchars = {
	eob = " ",
	fold = " ",
	foldopen = "",
	foldsep = " ",
	foldclose = "",
	wbr = " ",
	horiz = " ",
	horizup = " ",
	horizdown = " ",
	vert = " ",
	vertleft = " ",
	vertright = " ",
	verthoriz = " ",
}
