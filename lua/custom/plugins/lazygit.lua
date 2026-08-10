vim.pack.add { 'https://github.com/kdheepak/lazygit.nvim' }

-- Atalho para abrir o Lazygit (Espaço + l + g)
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = 'Abrir [L]azy[G]it' })
