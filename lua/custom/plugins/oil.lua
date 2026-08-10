vim.pack.add { 'https://github.com/stevearc/oil.nvim' }
vim.pack.add { 'https://github.com/refractalize/oil-git-status.nvim' }

-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require('oil').get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ':~')
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

local detail = false

require('oil').setup {
  default_file_explorer = true,

  columns = {
    'icon',
  },

  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,

  win_options = {
    winbar = '%!v:lua.get_oil_winbar()',
    signcolumn = 'yes:2',
  },

  keymaps = {
    ['gd'] = {
      desc = 'Toggle file detail view',
      callback = function()
        detail = not detail
        if detail then
          require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
        else
          require('oil').set_columns { 'icon' }
        end
      end,
    },
  },
}

require('oil-git-status').setup()

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Abrir a pasta pai com o Oil' })
