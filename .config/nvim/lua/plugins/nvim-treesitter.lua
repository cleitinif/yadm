return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function ()
    local configs = require('nvim-treesitter')
    configs.install({ 'rust', 'javascript', 'html', 'c', 'lua' })
  end
}
