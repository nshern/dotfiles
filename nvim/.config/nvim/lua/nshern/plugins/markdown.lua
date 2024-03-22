return {
  {
    'icewind/ltex-client.nvim',
    config = function()
      require('ltex-client').setup {}
    end,
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
    config = function()
      vim.g.mkdp_theme = 'light'
    end,
  },
}
