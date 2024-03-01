return {
  'kdheepak/lazygit.nvim',
  keys = {
    { '<leader>lg', '<cmd>LazyGit<CR>', desc = 'LazyGit', silent = true, noremap = true },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
