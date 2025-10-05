return {
  'folke/snacks.nvim',
  lazy = false,
  ---@type snacks.Config
  opts = {
    lazygit = {},
  },
  keys = {
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
