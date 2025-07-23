-- ~/.config/nvim/lua/plugins/lsp.lua

return {
  -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local mason_lspconfig = require('mason-lspconfig')

      -- Setup an on_attach function to enable keymaps only for buffers with an active LSP
      local on_attach = function(client, bufnr)
        local keymap = vim.keymap
        local opts = { noremap = true, silent = true }

        -- LSP-specific keymaps
        opts.buffer = bufnr
        keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      end

      -- Get the list of servers to setup from mason-lspconfig
      local servers = mason_lspconfig.get_installed_servers()

      -- Loop through the servers and set them up with lspconfig
      for _, server_name in ipairs(servers) do
        lspconfig[server_name].setup {
          on_attach = on_attach,
        }
      end
    end,
  },

  -- Automatically install LSPs to stdpath for neovim
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright" },
      })
    end,
  },
}
