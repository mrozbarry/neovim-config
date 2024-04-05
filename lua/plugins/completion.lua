local exists = function(file)
   local ok, err, code = os.rename(file, file)
   if not ok then
      if code == 13 then
         -- Permission denied, but it exists
         return true
      end
   end
   return ok, err
end

return {
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  dependencies = {
    -- Snippet Engine & its associated nvim-cmp source
    {
      'L3MON4D3/LuaSnip',
      version = 'v2.*',
      config = function()
        local paths = {}
        local user_snippets = vim.fn.resolve(vim.fn.stdpath("config") .. "/snippets/")
        if exists(user_snippets) then
          paths[#paths + 1] = user_snippets
        end
        -- require("luasnip.loaders.from_lua").lazy_load({
        --   paths = paths,
        -- })
        -- require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_snipmate").lazy_load({ paths = paths })
      end,
      event = "InsertEnter",
      opts = {
        enable_autosnippets = true,

      },
    },
    'saadparwaiz1/cmp_luasnip',

    -- Adds LSP completion capabilities
    'hrsh7th/cmp-nvim-lsp',

    -- Adds a number of user-friendly snippets
    -- 'rafamadriz/friendly-snippets',
  },
}
