return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,

        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            text_align = 'center',
          },
        },
      },
    }
    vim.keymap.set('n', '<tab>', '<cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<s-tab>', '<cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>', { noremap = true, silent = true })
  end,
}
