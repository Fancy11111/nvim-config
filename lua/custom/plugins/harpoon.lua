return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Toggle harpoon mark' })
      vim.keymap.set('n', '<leader>mm', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Toggle harpoon list' })

      vim.keymap.set('n', '<leader>mh', function()
        harpoon:list():select(1)
      end, { desc = 'Goto first harpoon mark' })
      vim.keymap.set('n', '<leader>mj', function()
        harpoon:list():select(2)
      end, { desc = 'Goto second harpoon mark' })
      vim.keymap.set('n', '<leader>mk', function()
        harpoon:list():select(3)
      end, { desc = 'Goto third harpoon mark' })
      vim.keymap.set('n', '<leader>ml', function()
        harpoon:list():select(4)
      end, { desc = 'Goto fourth harpoon mark' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>mn', function()
        harpoon:list():prev()
      end, { desc = 'Goto next harpoon mark' })
      vim.keymap.set('n', '<leader>mb', function()
        harpoon:list():next()
      end, { desc = 'Goto previous harpoon mark' })
    end,
  },
}
