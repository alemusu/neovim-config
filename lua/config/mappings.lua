
-- sets the leader key
vim.g.mapleader = ' ' 

-- open explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- moves marked text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- when moving with C-d/C-u the cursor stays in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when pasting-over, the content deleted is not saved
vim.keymap.set("x", "<leader>p", "\"_dP")

-- <leader>y yanks to system's clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- substitude the word I'm over to the one I input in the whole file
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

