return {
  {
    'lukas-reineke/indent-blankline.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    main = 'ibl',
    opts = {
      indent = {
        char = '▏', -- Try this thinner character instead of '│'
        tab_char = '▏',
        highlight = 'IblIndent',
        smart_indent_cap = true,
      },
      whitespace = {
        highlight = 'IblWhitespace',
        remove_blankline_trail = false,
      },
      scope = {
        enabled = true,
        char = '▏',
        show_start = false, -- Set to false to reduce visual noise
        show_end = false, -- Set to false to reduce visual noise
        injected_languages = false,
        highlight = 'IblScope',
        priority = 1024,
      },
      exclude = {
        filetypes = {
          'help',
          'alpha',
          'dashboard',
          'neo-tree',
          'Trouble',
          'trouble',
          'lazy',
          'mason',
          'notify',
          'toggleterm',
          'lazyterm',
          'lspinfo',
          'packer',
          'checkhealth',
          'TelescopePrompt',
          'TelescopeResults',
          'man',
          '',
        },
        buftypes = {
          'terminal',
          'nofile',
          'quickfix',
          'prompt',
        },
      },
    },
    config = function(_, opts)
      require('ibl').setup(opts)

      -- Set up highlight groups for better visibility
      local hooks = require 'ibl.hooks'
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#3C4048' }) -- Adjust color as needed
        vim.api.nvim_set_hl(0, 'IblScope', { fg = '#61AFEF' }) -- Brighter color for scope
        vim.api.nvim_set_hl(0, 'IblWhitespace', { fg = '#2C323C' })
      end)
    end,
  },
}
