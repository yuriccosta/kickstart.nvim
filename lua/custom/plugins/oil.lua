vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require('oil').setup {
  default_file_explorer = true,

}

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Abrir a pasta pai com o Oil' })
