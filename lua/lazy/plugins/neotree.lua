return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      -- only needed if you want to use the commands with "_with_window_picker" suffix
      's1n7ax/nvim-window-picker',
      tag = "v1.5",
      config = function()
        require'window-picker'.setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { 'neo-tree', "neo-tree-popup", "notify" },

              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', "quickfix" },
            },
          },
          other_win_hl_color = '#e35e4f',
        })
      end,
    }
  },
  config = function()
    require('neo-tree').setup({
      close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
      enable_git_status = true,
      enable_diagnostics = true,
      sources = {
        'filesystem',
        'document_symbols',
      },
      default_component_configs = {
        window = {
          mapping_options = {
            noremap = true,
            nowait = true,
          },
          mappings = {
            ["<2-LeftMouse>"] = "open_with_window_picker",
            ["<cr>"] = "open_with_window_picker",
          }
        },
        indent = {
          indent_size = 2,
          padding = 1, -- extra padding on left hand side
        },
        git_status = {
          symbols = {
            -- Change type
            added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
            deleted   = "✖",-- this can only be used in the git_status source
            renamed   = "󰁕",-- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "󰄱",
            staged    = "",
            conflict  = "",
          }
        },
        file_size = {
          enabled = false,
        },
        type = {
          enabled = false,
        },
        last_modified = {
          enabled = false,
        },
        created = {
          enabled = false,
        },
        symlink_target = {
          enabled = false,
        },
      },
      filesystem = {
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false, -- only works on Windows for hidden files/directories
        }
      },
    -- config = function ()
    --   vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    -- end
    })

  end,
}
