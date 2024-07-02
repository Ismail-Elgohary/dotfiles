vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>",  "<C-d>zz")  --  first page
vim.keymap.set("n", "<C-u>",  "<C-u>zz") --  end page
vim.keymap.set("n", "<C-s>",  ":w<CR>")  -- Fast saving with <leader> and s
vim.keymap.set({'n', 'x'}, '<leader>y', '"+y"')
vim.keymap.set({'n', 'x'}, '<leader>p', '"+p:"')
vim.keymap.set("n", "<leader>q", ":Ex<cr>")

-- to move lines 
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
