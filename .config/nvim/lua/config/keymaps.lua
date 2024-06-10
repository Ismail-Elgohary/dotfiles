vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>",  "<C-d>zz")  --  first page
vim.keymap.set("n", "<C-u>",  "<C-u>zz") --  end page
vim.keymap.set("n", "<C-s>",  ":w<CR>")  -- Fast saving with <leader> and s
vim.keymap.set({'n', 'x'}, '<leader>y', '"+y"')
vim.keymap.set({'n', 'x'}, '<leader>p', '"+p:"')
vim.keymap.set("n", "<leader>q", ":Ex<cr>")

