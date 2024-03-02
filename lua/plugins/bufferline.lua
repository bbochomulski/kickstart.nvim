return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup {
      vim.keymap.set('n', '<tab>', '<cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true }),
      vim.keymap.set('n', '<s-tab>', '<cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true }),
    }
  end,
}
