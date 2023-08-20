local opt = vim.opt -- for conciseness 
vim.cmd("autocmd!")

opt.relativenumber = true
opt.number = true
vim.opt.backup = false
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false --No wrap lines
vim.opt.backspace = "start,eol,indent"

--hilight---
vim.opt.cursorline = true
vim.opt.termguicolors = true

