return {
  'kawre/leetcode.nvim',
  build = ':TSUpdate html',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-treesitter/nvim-treesitter',
    'rcarriga/nvim-notify',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    arg = 'leetcode.nvim',
    lang = 'python',
    storage = {
      -- Set your root repository path here
      home = vim.fn.expand '/Users/brentharrington/Learning/leet_code/python/array/',

      cache = vim.fn.expand '~/.cache/leetcode',
    },
  },
}
