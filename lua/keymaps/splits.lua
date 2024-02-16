-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
-- vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
-- vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
-- vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
-- vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-L>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-H>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-K>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-L>', ':vertical resize +2<CR>', opts)

vim.api.nvim_set_keymap('n', '<C-h>', ':FocusSplitLeft<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':FocusSplitDown<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':FocusSplitUp<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':FocusSplitRight<CR>', { silent = true })
