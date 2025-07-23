-- ~/.config/nvim/lua/plugins/telescope.lua

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5', -- a stable tag
  dependencies = { 'nvim-lua/plenary.nvim' },
  -- The main configuration function for the plugin
  config = function()
    require('telescope').setup({})
  end,
  -- Keymaps are defined in a table, with the key and the function to call.
  keys = {
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Find text in files' },
  }
}
