-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
---- See the kickstart.nvim README$ for more information

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
}
