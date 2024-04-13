-- return {
-- }
return {
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    opts = {
      flavour = "latte", -- latte, frappe, macchiato, mocha
      background = { -- :h background
          light = "latte",
          dark = "mocha",
      },
      integrations = {
          cmp = false,
          gitsigns = true,
          nvimtree = false,
          treesitter = true,
          notify = false,
          mini = false,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
  },

  {'nxvu699134/vn-night.nvim'},

  {
    'marko-cerovac/material.nvim',
    priority = 1000,
    config = function ()
      require("material").setup({
        -- contrast = {
        --   terminal = false,
        --   sidebars = false,
        --   floating_windows = true,
        --   cursor_line = true,
        --   non_current_windows = false,
        -- },
        plugins = {
          "gitsigns",
          "indent-blankline",
          "nvim-cmp",
          "telescope",
          "which-key",
          "nvim-navic",
        },
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        -- styles = {
        --   -- Style to be applied to different syntax groups
        --   -- Value is any valid attr-list value for `:help nvim_set_hl`
        --   comments = { italic = true },
        --   keywords = { italic = true },
        --   functions = {},
        --   variables = {},
        --   -- Background styles. Can be "dark", "transparent" or "normal"
        --   sidebars = "dark", -- style for sidebars, see below
        --   floats = "dark", -- style for floating windows
        -- },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.5, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = true, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
      })
    end,
  },

  {
      'maxmx03/fluoromachine.nvim',
      config = function ()
       local fm = require 'fluoromachine'

       fm.setup {
          glow = false,
          theme = 'fluoromachine'
       }

      end
  },

  {
    "sekke276/dark_flat.nvim"
  },

  {
    "lalitmee/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim" },
  },

  { 'projekt0n/github-nvim-theme' }
}
