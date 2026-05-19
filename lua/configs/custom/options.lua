local o = vim.o

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- This sets the colorcolumn to 80 characters and a dark grey.
vim.wo.colorcolumn = "80"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#404040" })
