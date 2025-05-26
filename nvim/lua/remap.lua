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

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  end,
})
