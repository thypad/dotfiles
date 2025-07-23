-- ~/.config/nvim/lua/plugins/comment.lua

return {
  'numToStr/Comment.nvim',
  opts = {},
  lazy = false, -- Load it on startup
  config = function()
    require('Comment').setup()
  end,
}
