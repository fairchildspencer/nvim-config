return {
  { -- Autoformat
    'stevearc/conform.nvim',
    config = function()
      require('conform').setup {
        notify_on_error = false,
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
        formatters_by_ft = {
          lua = { 'stylua' },
          go = { 'gofumpt', 'goimports_reviser', 'golines' },
          vue = { { 'prettierd', 'volar' } },
          javascript = { { 'prettierd', 'prettier' } },
        },
      }

      vim.keymap.set('n', '<leader>fm', function()
        require('conform').format()
      end, { desc = 'Format current buffer' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
