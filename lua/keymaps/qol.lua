-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

vim.keymap.set('n', '<Esc>', '<Esc>:noh<CR>', opts)

vim.keymap.set('n', '<leader>ca', require('actions-preview').code_actions)
