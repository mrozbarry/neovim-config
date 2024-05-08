local cmp = require("cmp")

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            local luasnip = require('luasnip')
            if not luasnip then
                return
            end
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),

    -- Set source precedence
    sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- For nvim-lsp
        { name = 'luasnip' }, -- For luasnip user
        { name = 'buffer' }, -- For buffer word completion
        -- { name = 'path' },        -- For path completion
    })
})

