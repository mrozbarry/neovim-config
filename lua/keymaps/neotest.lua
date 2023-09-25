local opts = {
  noremap = true,      -- non-recursive
  silent = true,       -- do not show message
}

vim.keymap.set('n', '<leader>ntf', function() require('neotest').run.run(vim.fn.expand('%')) end, opts)
vim.keymap.set('n', '<leader>ntn', function() require('neotest').run.run(vim.fn.expand('%')) end, opts)
vim.keymap.set('n', '<leader>nta', function() require('neotest').run.run({ suite = true }) end, opts)


