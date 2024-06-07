return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      lspconfig.pyright.setup {}
      lspconfig.lua_ls.setup {}
      lspconfig.marksman.setup {}
    end,
  },
}
