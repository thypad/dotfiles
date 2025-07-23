-- ~/.config/nvim/lua/plugins/which-key.lua

return {
  'folke/which-key.nvim',
  event = "VeryLazy", -- Load it when the editor is idle
  config = function()
    require("which-key").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
    })
  end
}
