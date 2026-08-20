vim.pack.add { 'https://github.com/hat0uma/csvview.nvim' }

require('csvview').setup {
  parser = {
    delimiter = ',',
  },
  view = {
    -- "border" cria linhas divisórias virtuais.
    -- "highlight" coloca espaço
    display_mode = 'border',
    header_lnum = true, -- Auto-detect header (default)
    sticky_header = {
      enabled = true,
      separator = '─', -- Separator line character
    },
  },

  keymaps = {
    -- Horizontal navigation
    jump_next_field_end = { '<Tab>', mode = { 'n', 'v' } },
    jump_prev_field_end = { '<S-Tab>', mode = { 'n', 'v' } },

    -- Vertical navigation
    jump_next_row = { '<Enter>', mode = { 'n', 'v' } },
    jump_prev_row = { '<S-Enter>', mode = { 'n', 'v' } },
  },
}

vim.keymap.set('n', '<leader>cv', '<Cmd>CsvViewToggle<CR>', { desc = '[C]sv [V]iew Toggle' })

local wk_ok, wk = pcall(require, 'which-key')
if wk_ok then wk.add {
  { '<leader>c', group = '[C]sv', mode = { 'n', 'v' } },
} end
