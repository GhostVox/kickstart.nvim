return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    require('flutter-tools').setup {
      ui = { border = 'rounded' },
      lsp = {
        capabilities = capabilities,
        -- reuses your LspAttach autocmd automatically, no on_attach needed
      },
    }
  end,
}
