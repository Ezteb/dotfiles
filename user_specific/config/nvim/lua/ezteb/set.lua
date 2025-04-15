-- vim:foldmethod=marker

-- Here set global options
-- use after/ftplugin/<file_extension>.lua for file type specific options

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.visualbell=true
vim.opt.clipboard = "unnamed,unnamedplus"

vim.opt.colorcolumn="120"
vim.opt.cursorcolumn=true
vim.opt.cursorline=true
vim.opt.cursorlineopt="both"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.conceallevel = 2

vim.opt.isfname:append("@-@")

vim.opt.spell=true
vim.opt.spelllang="es,en"
vim.opt.spellsuggest="best,5"

