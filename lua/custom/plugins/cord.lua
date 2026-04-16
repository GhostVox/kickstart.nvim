return {
  'vyfor/cord.nvim',
  config = function()
    require('cord').setup {
      editor = {
        tooltip = 'The Superior Text Editor',
      },
      idle = { enabled = true, text = '...' },
      display = {
        show_time = true,
        show_repository = true,
      },
    }
  end,
}
