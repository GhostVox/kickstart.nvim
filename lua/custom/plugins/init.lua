-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'kdheepak/lazygit.nvim',
    lazy = false, -- Load the plugin immediately,
    config = function()
      vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', { noremap = true, silent = true })
    end,
  },
}
