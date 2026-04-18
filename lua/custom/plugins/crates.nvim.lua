return {
  'Saecki/crates.nvim',
  event = { 'BufRead Cargo.toml' },
  opts = {
    completion = {
      cmp = { enabled = true }, -- if you use nvim-cmp
      crates = {
        enabled = true,
        max_results = 12,
        min_chars = 3,
      },
    },
    lsp = {
      enabled = true,
      actions = true,
      completion = false,
      hover = true,
    },
  },
}
