return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      sections = {
        lualine_c = {
          {
            'filename',
            file_status = true,
            symbols = {
              modified = '○',
            },
          },
        },
        lualine_z = { "os.date('%I:%M %p')", 'data', "require'lsp-status'.status()" },
        lualine_x = { 'encoding', 'filetype' },
      },
    },
  },
}
