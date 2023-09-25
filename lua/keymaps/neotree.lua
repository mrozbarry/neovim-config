local opts = {
  noremap = true,      -- non-recursive
  silent = true,       -- do not show message
}

vim.keymap.set('n', '<leader>d', ':Neotree filesystem focus left<CR>', opts)
vim.keymap.set('n', '<leader>str', ':Neotree float document_symbols<CR>', opts)
