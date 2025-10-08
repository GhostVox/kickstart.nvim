-- in a file like lua/plugins/themes.lua

return {
  {
    'GhostVox/subliminal.nvim',
    lazy = false,
    priority = 1000,
  },
  -- An popular theme from GitHub
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- Another popular theme
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
  },
  { 'rose-pine/neovim', name = 'rose-pine', lazy = false, priority = 1000 },
}
