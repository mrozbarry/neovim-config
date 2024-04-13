return {
  { 'mhartington/formatter.nvim', config = true },
  {
    'neovim/nvim-lspconfig',

    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      {
        'j-hui/fidget.nvim',
        event = "LspAttach",
        tag = 'legacy',
        opts = {},
      },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
      {
        "SmiteshP/nvim-navic",
        opts = {
          highlight = true,
        },
      },

    },
  },

  -- Not really lsp...
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
      require('barbecue').setup()
      require('barbecue.ui').toggle(true)
    end,
  }
}
