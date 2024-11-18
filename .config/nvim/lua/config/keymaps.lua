vim.g.mapleader = " "

vim.keymap.set("x",        "<leader>p", '"_dP')
vim.keymap.set({"n", "v"}, "<leader>y", '"+y')
vim.keymap.set({'n', 'x', 'v'}, '<leader>p', '"+p:"')
vim.keymap.set("n", "<leader>q", ":Ex<cr>")


vim.keymap.set("n", "<C-d>",  "<C-d>zz")  --  end page
vim.keymap.set("n", "<C-u>",  "<C-u>zz")  --  first page


-- to move lines 
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")


vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


--   cutting  --
vim.keymap.set("n", "<leader>l",    "Delete Buffers to the Left") -- Delete left
