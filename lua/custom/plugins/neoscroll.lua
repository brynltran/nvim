return {
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup {
      mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
      hide_cursor = true,
      stop_eof = false,
      respect_scrolloff = true,
      cursor_scrolls_alone = true,
    }

    -- New syntax with opts table
    local neoscroll = require 'neoscroll'

    local keymap = {
      ['<C-u>'] = function()
        neoscroll.ctrl_u { duration = 40 }
      end,
      ['<C-d>'] = function()
        neoscroll.ctrl_d { duration = 40 }
      end,
      ['<C-y>'] = function()
        neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
      end,
      ['<C-e>'] = function()
        neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
      end,
      ['zt'] = function()
        neoscroll.zt { half_win_duration = 250 }
      end,
      ['zz'] = function()
        neoscroll.zz { half_win_duration = 250 }
      end,
      ['zb'] = function()
        neoscroll.zb { half_win_duration = 250 }
      end,
    }

    local modes = { 'n', 'v', 'x' }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end

    -- Fix visual mode paste
    vim.keymap.set('v', 'p', '"_dP')
  end,
}
