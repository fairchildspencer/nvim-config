return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Append buffer to Harpoon list' })
      vim.keymap.set('n', '<leader>h', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Harpoon show list' })
      vim.keymap.set('n', '<leader>c', function()
        harpoon:list():clear()
      end, { desc = 'Harpoon clear list' })
      vim.keymap.set('n', '<leader>r', function()
        harpoon:list():remove()
      end, { desc = 'Harpoon remove curr buffer from list' })

      vim.keymap.set('n', '<leader>u', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon li 1' })
      vim.keymap.set('n', '<leader>i', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon li 2' })
      vim.keymap.set('n', '<leader>o', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon li 3' })
      vim.keymap.set('n', '<leader>p', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon li 4' })

      vim.keymap.set('n', '<S-tab>', function()
        harpoon:list():prev()
      end, { desc = 'Harpoon prev list item' })
      vim.keymap.set('n', '<tab>', function()
        harpoon:list():next()
      end, { desc = 'Harpoon next list item' })
    end,
  },
}
