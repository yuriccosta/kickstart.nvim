-- Cria o atalho para copiar o arquivo inteiro
vim.keymap.set('n', '<leader>ya', ':%y+<CR>', { desc = '[Y]ank [A]ll' })


-- Registrando o nome do grupo no menu do which-key
local status_ok, wk = pcall(require, "which-key")
if status_ok then
  wk.add({
    { "<leader>y", group = "[Y]ank" },
  })
end
