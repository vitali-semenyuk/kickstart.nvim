return {
  'folke/snacks.nvim',
  lazy = false,
  ---@type snacks.Config
  opts = {
    bufdelete = {},
    lazygit = {},
  },
  keys = {
    {
      '<leader>bx',
      function()
        Snacks.bufdelete()
      end,
      desc = '[b]uffer close/e[x]it current',
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
