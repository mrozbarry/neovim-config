-- -- Hint: use `:h <option>` to figure out the meaning if needed
-- vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
-- vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
-- vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim
--
-- -- Tab
-- vim.opt.tabstop = 2                 -- number of visual spaces per TAB
-- vim.opt.softtabstop = 2             -- number of spaces in tab when editing
-- vim.opt.shiftwidth = 2              -- insert N spaces on a tab
-- vim.opt.expandtab = true            -- tabs are spaces, mainly because of python
-- vim.opt.smartindent = true
-- vim.opt.autoindent = true
-- vim.opt.cursorline = true
--
-- -- UI config
-- vim.opt.number = true               -- show absolute number
-- vim.opt.relativenumber = true       -- add numbers to each line on the left side
-- vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
-- vim.opt.splitbelow = true           -- open new vertical split bottom
-- vim.opt.splitright = true           -- open new horizontal splits right
-- vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
-- -- vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint
--
-- -- Searching
-- vim.opt.incsearch = true            -- search as characters are entered
-- vim.opt.hlsearch = true             -- do not highlight matches
-- vim.opt.ignorecase = true           -- ignore case in searches by default
-- vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered
--
-- -- Leader
-- vim.g.mapleader = ','
--
-- -- Wordwrap
-- vim.wo.wrap = false
-- vim.wo.linebreak = false
-- vim.wo.list = false

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 2                 -- number of visual spaces per TAB
vim.opt.softtabstop = 2             -- number of spaces in tab when editing
vim.opt.shiftwidth = 2              -- insert N spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cursorline = true

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
-- vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = true             -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Wordwrap
vim.wo.wrap = false
vim.wo.linebreak = false
vim.wo.list = false

--

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
