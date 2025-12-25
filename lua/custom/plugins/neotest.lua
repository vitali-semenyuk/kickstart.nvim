return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'olimorris/neotest-rspec',
    'mrcjkb/rustaceanvim',
  },
  config = function()
    local neotest = require 'neotest'

    vim.keymap.set('n', '<leader>rt', function()
      neotest.run.run()
    end, { desc = '[R]un nearest [t]est' })
    vim.keymap.set('n', '<leader>rc', function()
      neotest.run.run(vim.fn.expand '%')
    end, { desc = '[R]un [c]urrent file' })
    vim.keymap.set('n', '<leader>ra', function()
      neotest.run.run(vim.fn.getcwd())
    end, { desc = '[R]un [a]ll test suite' })
    vim.keymap.set('n', '<leader>rl', function()
      neotest.run.run_last()
    end, { desc = '[R]un [l]ast test' })

    -- UI toggles
    vim.keymap.set('n', '<leader>to', function()
      neotest.output.open { enter = true }
    end, { desc = 'Open test output' })
    vim.keymap.set('n', '<leader>tO', function()
      neotest.output_panel.toggle()
    end, { desc = 'Toggle output panel' })
    vim.keymap.set('n', '<leader>tt', function()
      neotest.summary.toggle()
    end, { desc = 'Toggle test summary' })

    neotest.setup {
      adapters = {
        require 'neotest-rspec',
        require 'rustaceanvim.neotest',
      },
    }
  end,
}
