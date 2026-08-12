vim.pack.add { 'https://github.com/kdheepak/lazygit.nvim' }

-- Atalho para abrir o Lazygit (Espaço + l + g)
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = 'Abrir [L]azy[G]it' })


local wk_ok, wk = pcall(require, "which-key")
if wk_ok then
  wk.add({
    { '<leader>l', group = '[L]azy' }, })
end
