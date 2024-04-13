require('lazy').setup({
  -- NOTE: First, some plugins that don't require any configuration
  --
  'nvim-tree/nvim-web-devicons',

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  'jwalton512/vim-blade',

  {
    "chrisgrieser/nvim-early-retirement",
    config = true,
    event = "VeryLazy",
    opts = {
      retirementAgeMins = 20,
      minimumBufferNum = 1,
      ignoreUnsavedChangesBufs = true,
    },
  },

  { import = 'lazy.plugins.lsp' },
  { import = 'lazy.plugins.completion' },
  { import = 'lazy.plugins.theme' },
  -- { import = 'lazy.plugins.neotree' },
  { import = 'lazy.plugins.oil' },
  { import = 'lazy.plugins.testing' },


  -- -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },
  {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        -- vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk, { buffer = bufnr, desc = 'Preview git hunk' })

        -- don't override the built-in and fugitive keymaps
        local gs = package.loaded.gitsigns
        vim.keymap.set({'n', 'v'}, ']c', function()
          if vim.wo.diff then return ']c' end
          vim.schedule(function() gs.next_hunk() end)
          return '<Ignore>'
        end, {expr=true, buffer = bufnr, desc = "Jump to next hunk"})
        vim.keymap.set({'n', 'v'}, '[c', function()
          if vim.wo.diff then return '[c' end
          vim.schedule(function() gs.prev_hunk() end)
          return '<Ignore>'
        end, {expr=true, buffer = bufnr, desc = "Jump to previous hunk"})
      end,
    },
  },

  {
    "nvim-focus/focus.nvim",
    opts = {
      enable = true,
      commands = true,
      ui = {
        number = false,
        relativenumber = false,
        hybridnumber = true,
        absolutenumber_unfocussed = true,
        cursorline = true,
        signcolumn = true,
        winhighlight = true,
      },
    },
  },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'material',
        -- component_separators = '|',
        -- section_separators = '',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
    },
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      -- char = '┊',
      -- space_char_blankline = " ",
      -- show_current_context = true,
      -- show_current_context_start = true,
      -- show_trailing_blankline_indent = false,
      -- char_highlight_list = {
      --   "IndentBlanklineIndent1",
      --   "IndentBlanklineIndent2",
      --   "IndentBlanklineIndent3",
      --   "IndentBlanklineIndent4",
      --   "IndentBlanklineIndent5",
      --   "IndentBlanklineIndent6",
      -- },
    },
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },

  {
    "aznhe21/actions-preview.nvim",
    options = {
      telescope = {
        sorting_strategy = "ascending",
        layout_strategy = "vertical"
      },
    },
  },

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
}, {})

