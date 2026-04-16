return {
  'karb94/neoscroll.nvim',
  opts = {
    mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', 'zt', 'zz', 'zb' },
    hide_cursor = true,
    stop_eof = true,
    respect_scrolloff = true,
    cursor_scrolls_alone = true,
    duration_multiplier = 1.0,
    easing = 'sine',
    pre_hook = nil,
    post_hook = nil,
  },
  config = function(_, opts)
    local neoscroll = require 'neoscroll'
    neoscroll.setup(opts)

    -- Smooth hjkl-follow scrolling (triggers when cursor hits scrolloff zone)
    -- These override j/k to scroll smoothly when near window edges
    local keymap = {
      ['<C-u>'] = function()
        neoscroll.ctrl_u { duration = 120, easing = 'sine' }
      end,
      ['<C-d>'] = function()
        neoscroll.ctrl_d { duration = 120, easing = 'sine' }
      end,
      ['<C-b>'] = function()
        neoscroll.ctrl_b { duration = 200, easing = 'sine' }
      end,
      ['<C-f>'] = function()
        neoscroll.ctrl_f { duration = 200, easing = 'sine' }
      end,
      ['zt'] = function()
        neoscroll.zt { half_win_duration = 100 }
      end,
      ['zz'] = function()
        neoscroll.zz { half_win_duration = 100 }
      end,
      ['zb'] = function()
        neoscroll.zb { half_win_duration = 100 }
      end,
    }

    for key, fn in pairs(keymap) do
      vim.keymap.set({ 'n', 'v', 'x' }, key, fn)
    end

    -- Smooth mouse wheel
    vim.keymap.set({ 'n', 'v', 'x' }, '<ScrollWheelUp>', function()
      neoscroll.scroll(-0.3, { move_cursor = false, duration = 80 })
    end)
    vim.keymap.set({ 'n', 'v', 'x' }, '<ScrollWheelDown>', function()
      neoscroll.scroll(0.3, { move_cursor = false, duration = 80 })
    end)
  end,
}
