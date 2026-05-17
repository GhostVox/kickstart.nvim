return {
  'vyfor/cord.nvim',
  config = function()
    require('cord').setup {
      editor = {
        tooltip = 'The Superior Text Editor',
      },
      idle = {
        enabled = true,
        label = '...', -- was 'text'
      },
      timestamp = {
        enabled = true, -- was display.show_time
      },
      repository = {
        enabled = true, -- was display.show_repository
      },
    }
  end,
}
