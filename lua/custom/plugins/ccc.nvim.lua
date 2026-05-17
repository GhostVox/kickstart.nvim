return {
  'uga-rosa/ccc.nvim',
  config = function()
    local ccc = require 'ccc'
    ccc.setup {
      -- Your preferred default output (hex, rgb, hsl, etc.)
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    }
  end,
}
