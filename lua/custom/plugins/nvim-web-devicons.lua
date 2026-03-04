-- lua/plugins/nvim-web-devicons.lua
return {
  'nvim-tree/nvim-web-devicons',
  lazy = true, -- loads on demand when other plugins require it
  opts = {
    -- color_icons: enable per-icon highlight colors (default true)
    color_icons = true,

    -- default: show a default icon when no match is found
    default = true,

    -- strict: look up by filename first, then extension
    -- prevents e.g. a file named "go" getting the Go extension icon
    strict = true,

    -- variant: force dark variant to match Catppuccin Mocha
    variant = 'dark',

    -- override specific extension icons if desired
    -- (leave empty or add your own tweaks)
    override_by_extension = {
      ['log'] = {
        icon = '',
        color = '#a6e3a1', -- Catppuccin Mocha green
        cterm_color = '114',
        name = 'Log',
      },
    },

    -- override specific filenames
    override_by_filename = {
      ['.gitignore'] = {
        icon = '',
        color = '#f38ba8', -- Catppuccin Mocha red
        cterm_color = '203',
        name = 'Gitignore',
      },
      ['Dockerfile'] = {
        icon = '',
        color = '#89b4fa', -- Catppuccin Mocha blue
        cterm_color = '111',
        name = 'Dockerfile',
      },
    },
  },
}
