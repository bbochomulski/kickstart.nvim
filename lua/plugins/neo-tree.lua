return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.cmd.hi 'NeoTreeNormal guibg=NONE ctermbg=NONE'
    vim.cmd.hi 'NeoTreeNormalNC guibg=NONE ctermbg=NONE'
  end,
  keys = {
    { '<leader>e', '<cmd> :Neotree toggle<CR>', desc = 'Toggle Neotree' },
  },
}
