-- Cria o atalho para copiar o arquivo inteiro
vim.keymap.set('n', '<leader>ya', ':%y+<CR>', { desc = '[Y]ank [A]ll' })

-- Salvar o arquivo atual rapidamente
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Salvar arquivo (:w)", silent = true })

