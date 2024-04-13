-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-- Clear highlights on esc
vim.keymap.set('n', '<Esc>', '<Esc>:noh<CR>', opts)

-- Show LSP code actions
vim.keymap.set('n', '<leader>ca', require('actions-preview').code_actions)

-- neotest runner
vim.keymap.set('n', '<leader>ntf', function() require('neotest').run.run(vim.fn.expand('%')) end, opts)
vim.keymap.set('n', '<leader>ntn', function() require('neotest').run.run(vim.fn.expand('%')) end, opts)
vim.keymap.set('n', '<leader>nta', function() require('neotest').run.run({ suite = true }) end, opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-L>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-H>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-K>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-L>', ':vertical resize +2<CR>', opts)

-- Move cursor between panes
vim.api.nvim_set_keymap('n', '<C-h>', ':FocusSplitLeft<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':FocusSplitDown<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':FocusSplitUp<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':FocusSplitRight<CR>', { silent = true })

require('lazy.keymaps.snippets')
