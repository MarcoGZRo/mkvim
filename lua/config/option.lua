local opt = vim.opt
local o = vim.o
local g = vim.g
-- NOTE: Options



g.mapleader = " "



o.laststatus = 3
o.showmode = false
o.splitkeep = "screen"
o.cursorline = true
o.cursorlineopt = "number"
o.expandtab = true
opt.fillchars = { eob = " " }
o.updatetime = 250
o.signcolumn = "yes"


opt.number = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.termguicolors = true
opt.relativenumber = true





-- @NOTE: If you have another theme installed, you can change it
vim.cmd[[colorscheme carbonfox]]
