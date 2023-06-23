local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>p', builtin.commands, {})

vim.keymap.set('n', '<C-r>', builtin.lsp_references, {})
vim.keymap.set('n', '<C-i>', builtin.lsp_implementations, {})
vim.keymap.set('n', '<C-d>', builtin.lsp_definitions, {})

vim.keymap.set('n', '<C-g>', builtin.treesitter, {})
