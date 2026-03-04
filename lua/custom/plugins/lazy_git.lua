return {
  'kdheepak/lazygit.nvim',
  lazy = true,
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>gg', '<cmd>LazyGit<cr>', desc = '[G]it La[g]ygit' },
    { '<leader>gf', '<cmd>LazyGitCurrentFile<cr>', desc = '[G]it Current [F]ile' },
    { '<leader>gl', '<cmd>LazyGitFilter<cr>', desc = '[G]it [L]og' },
  },
}
