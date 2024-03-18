vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<CR>")

vim.keymap.set('n', '<leader>cp', '"*p')
vim.keymap.set('n', '<leader>cP', '"*P')
vim.keymap.set('v', '<leader>cp', '"*p')
vim.keymap.set('v', '<leader>cP', '"*P')
vim.keymap.set('n', '<leader>cy', '"*y')
vim.keymap.set('n', '<leader>cY', '"*Y')
vim.keymap.set('v', '<leader>cy', '"*y')
vim.keymap.set('v', '<leader>cY', '"*Y')

vim.keymap.set('n', '<C-Left>', '<cmd> TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd> TmuxNavigateRight<CR>')
vim.keymap.set('n', '<C-Up>', '<cmd> TmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd> TmuxNavigateDown<CR>')

