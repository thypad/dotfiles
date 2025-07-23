-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- This command will be run after the plugin is installed
  config = function()
    require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all"
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "javascript", "typescript" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,

      highlight = {
        enable = true, -- false will disable the whole extension
      },
    })
  end,
}
