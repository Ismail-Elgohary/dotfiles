vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>", "<C-d>zz")  --  first page
vim.keymap.set("n", "<C-u>", "<C-u>zz") --  end page

vim.keymap.set("n", "<leader>q", ":Ex<cr>")
vim.keymap.set("i", "<C-c>", "<esc>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
