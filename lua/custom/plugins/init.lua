-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
-- See the kickstart.nvim README for more information

return {
  {
    'tpope/vim-fugitive',
    lazy = false, -- Load the plugin immediately
    config = function()
      -- Example keybinding for :Gstatus
      vim.keymap.set('n', '<leader>gs', ':Gstatus<CR>', { noremap = true, silent = true })
    end,
  },
  {
    'mbbill/undotree',
    lazy = false, -- Load the plugin immediately
    config = function()
      -- Optional: Set up a keybinding to toggle UndoTree
      vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })
    end,
  },
  {
    'ray-x/lsp_signature.nvim',
    lazy = false, -- Load the plugin immediately for signature help
    config = function()
      require('lsp_signature').setup {
        bind = true,
        hint_enable = true,
        floating_window = true,
        transparency = 20,
        max_width = 80,
        -- Additional configuration options if needed
      }
    end,
  },
  {
    'lukas-reineke/virt-column.nvim',
    lazy = false, -- Load the plugin immediately
    config = function()
      require('virt-column').setup {
        char = '│', -- Use a skinny line character
        virtcolumn = '100', -- Specify the column number(s) where you want the line
      }
    end,
  },
}
