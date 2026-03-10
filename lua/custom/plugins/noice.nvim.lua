return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  opts = {
    lsp = {
      hover = {
        enabled = true,
      },
      signature = {
        enabled = true,
      },
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
    },
    presets = {
      bottom_search = true, -- classic bottom cmdline for search
      command_palette = false, -- position cmdline and popupmenu together
      long_message_to_split = true,
      inc_rename = false,
    },
  },
}
