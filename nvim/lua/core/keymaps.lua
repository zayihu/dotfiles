local map = vim.keymap.set

map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>silent! w<cr><esc>", { desc = "Save file", silent = true })
