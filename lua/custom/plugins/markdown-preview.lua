return {
  'iamcco/markdown-preview.nvim',
  ft = { 'markdown' },
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },

  build = 'cd app && npm install',

  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }

    -- Auto reload
    vim.g.mkdp_refresh_slow = 0

    -- Bind to 0.0.0.0
    vim.g.mkdp_open_to_the_world = 1
    vim.g.mkdp_open_ip = '0.0.0.0'

    -- Echo preview URL
    vim.g.mkdp_echo_preview_url = 1

    -- Auto close when leaving buffer
    vim.g.mkdp_auto_close = 1
  end,
}
