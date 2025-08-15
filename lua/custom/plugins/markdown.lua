return {
  'iamcco/markdown-preview.nvim',
  ft = { 'markdown' },
  build = 'cd app && npm install',
  config = function()
    -- Enable dark mode base
    vim.g.mkdp_theme = 'dark'
    vim.g.mkdp_browser = '/usr/bin/firefox'

    -- Use custom CSS with Catppuccin colors
    vim.g.mkdp_preview_options = {
      custom_css = vim.fn.expand '~/.config/nvim/markdown-catppuccin.css',
    }
  end,
}
