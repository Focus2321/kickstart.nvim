return {
  {
    'ThePrimeagen/99',
    config = function()
      local _99 = require '99'

      -- For logging that is to a file if you wish to trace through requests
      -- for reporting bugs, i would not rely on this, but instead the provided
      -- logging mechanisms within 99.  This is for more debugging purposes
      local cwd = vim.uv.cwd()
      local basename = vim.fs.basename(cwd)

      _99.setup {
        provider = _99.OpenCodeProvider,
        model = 'openai/gpt-5.3-codex',

        logger = {
          level = _99.DEBUG,
          path = '/tmp/' .. basename .. '.99.debug',
          print_on_error = true,
        },

        completion = {
          custom_rules = {
            'scratch/custom_rules/',
          },

          files = {},

          source = 'cmp',
        },

        md_files = {
          'AGENT.md',
        },
      }

      vim.keymap.set('v', '<leader>9v', function()
        _99.visual()
      end)

      vim.keymap.set('v', '<leader>9s', function()
        _99.stop_all_requests()
      end)
    end,
  },
}
