vim.pack.add { 'https://github.com/hat0uma/csvview.nvim' }

require('csvview').setup {
  parser = {
    delimiter = ',',
  },
  view = {
    -- "border" cria linhas divisórias virtuais.
    -- "highlight" coloca espaço
    display_mode = 'border',
  },
}

vim.keymap.set('n', '<leader>cv', '<Cmd>CsvViewToggle<CR>', { desc = '[C]sv [V]iew Toggle' })


local wk_ok, wk = pcall(require, "which-key")
if wk_ok then
  wk.add({
    { '<leader>c', group = '[C]sv', mode = { 'n', 'v' } },
  })
end

