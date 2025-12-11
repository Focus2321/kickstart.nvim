return {
  'iamcco/markdown-preview.nvim',

  ft = { 'markdown' },
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },

  -- YOUR ORIGINAL BUILD — DO NOT CHANGE THIS
  build = 'cd app && npm install',

  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }

    -- Auto reload
    vim.g.mkdp_refresh_slow = 0

    -- Bind server to 0.0.0.0
    vim.g.mkdp_open_to_the_world = 1
    vim.g.mkdp_open_ip = '0.0.0.0'

    -- Optional quality-of-life settings
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_auto_start = 0
  end,
}
