return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    -- 1. Define the group names we want to use
    local highlight = {
      'RainbowRed',
      'RainbowYellow',
      'RainbowGreen',
      'RainbowCyan',
      'RainbowBlue',
      'RainbowViolet',
    }

    local hooks = require 'ibl.hooks'

    -- 2. Create the dynamic highlight helper
    local function set_rainbow_hl()
      local function fg_of(group, fallback)
        local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
        if ok and hl and hl.fg then
          return string.format('#%06x', hl.fg)
        end
        return fallback
      end

      -- Map colors to your theme's existing palette
      local colors = {
        { name = 'RainbowRed', fg = fg_of('DiagnosticError', '#E06C75') },
        { name = 'RainbowYellow', fg = fg_of('DiagnosticWarn', '#E5C07B') },
        { name = 'RainbowGreen', fg = fg_of('DiagnosticHint', '#98C379') },
        { name = 'RainbowCyan', fg = fg_of('DiagnosticInfo', '#56B6C2') },
        { name = 'RainbowBlue', fg = fg_of('Function', '#61AFEF') },
        { name = 'RainbowViolet', fg = fg_of('Keyword', '#C678DD') },
      }

      for _, c in ipairs(colors) do
        vim.api.nvim_set_hl(0, c.name, { fg = c.fg, nocombine = true })
      end
    end

    -- 3. Register the hook to re-apply colors whenever highlights reset
    hooks.register(hooks.type.HIGHLIGHT_SETUP, set_rainbow_hl)

    -- 4. Initial call to set colors for the first load
    set_rainbow_hl()

    -- 5. Finalize the plugin setup
    require('ibl').setup {
      indent = {
        char = '│',
        tab_char = '│',
        highlight = highlight,
      },
      scope = { enabled = false },
      exclude = {
        buftypes = { 'terminal' },
        filetypes = { 'help', 'startify', 'dashboard', 'neogitstatus', 'lazy' },
      },
    }
  end,
}
