-- ~/.config/nvim/lua/plugins/cmp.lua

return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp', -- LSP source
    'hrsh7th/cmp-buffer',   -- Buffer words source
    'hrsh7th/cmp-path',     -- File path source
    'saadparwaiz1/cmp_luasnip', -- Snippet source
    'L3MON4D3/LuaSnip',     -- Snippet engine
  },
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'luasnip' },
      }),
    })
  end,
}
