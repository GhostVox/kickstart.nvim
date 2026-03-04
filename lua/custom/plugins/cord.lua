return {
  'vyfor/cord.nvim',
  config = function()
    require('cord').setup {
      editor = {
        tooltip = 'The Superior Text Editor',
      },
      idle = {
        enable = true,
        timeout = 1800000,
        text = 'Idle',
      },
      display = {
        show_time = true,
        show_repository = true,
      },
    }
  end,
}
