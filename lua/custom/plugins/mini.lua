return {
  'echasnovski/mini.nvim',
  config = function()
    local miniSessions = require 'mini.sessions'
    miniSessions.setup {
      autowrite = false,
    }

    local function openCurrentDirectorySession()
      local pathName = require('custom.utils.mini').getSessionPath()
      local _, error = pcall(miniSessions.read, pathName)
      if error ~= nil then
        print 'no session found'
      end
    end

    vim.keymap.set('n', '<leader>S.', openCurrentDirectorySession, { desc = 'Open [S]ession [.]Current Directory' })

    local miniStarter = require 'mini.starter'
    miniStarter.setup {
      items = {
        {
          name = 'Load Session (' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:~:h') .. ')',
          action = openCurrentDirectorySession,
          section = 'Session',
        },
        miniStarter.sections.builtin_actions(),
      },
      footer = '',
    }

    require('mini.ai').setup { n_lines = 500 }

    local statusline = require 'mini.statusline'

    local activeContent = function()
      local mode, mode_hl = statusline.section_mode { trunc_width = 800 }
      local git = statusline.section_git { trunc_width = 75 }
      local filename = statusline.section_filename { trunc_width = 800 }
      local fileinfo = statusline.section_fileinfo { trunc_width = 120 }
      local search = statusline.section_searchcount { trunc_width = 75 }
      local recordingRegister = vim.fn.reg_recording()
      local recordingStatus = ''
      if #recordingRegister > 0 then
        recordingStatus = 'recording @' .. recordingRegister
      end

      return statusline.combine_groups {
        { hl = mode_hl, strings = { mode } },
        {
          hl = 'MiniStatuslineDevinfo',
          strings = { git },
        },
        '%<', -- Mark general truncate point
        { hl = 'MiniStatuslineFilename', strings = { filename } },
        '%=', -- End left alignment
        -- macro recording status
        { hl = 'MiniStatuslineDevinfo', strings = { recordingStatus } },
        -- file info
        { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
        {
          hl = mode_hl,
          strings = { search },
        },
      }
    end

    statusline.setup {
      -- set use_icons to true if you have a Nerd Font
      use_icons = vim.g.have_nerd_font,
      content = {
        active = activeContent,
      },
    }

    -- require('mini.tabline').setup {
    --   use_icons = vim.g.have_nerd_font,
    -- }

    require('mini.bufremove').setup {}

    -- vim.keymap.set('n', 'L', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
    -- vim.keymap.set('n', 'H', '<cmd>bprev<cr>', { desc = 'Prev Buffer' })
    vim.keymap.set('n', '<leader>c', function()
      require('mini.bufremove').delete()
    end, { desc = '[C]lose Buffer' })
    vim.keymap.set('n', '<leader>C', function()
      ---@diagnostic disable-next-line: param-type-mismatch
      local lastBuffer = vim.fn.bufnr '$'
      for i = 1, lastBuffer, 1 do
        if vim.fn.buflisted(i) == 1 and vim.fn.bufwinnr(i) == -1 then
          require('mini.bufremove').delete(i)
        end
      end
    end, { desc = '[C]lose All Buffers' })

    local miniMove = require 'mini.move'
    miniMove.setup {
      mappings = {
        left = '',
        right = '',
        down = '',
        up = '',
        line_left = '',
        line_right = '',
        line_down = '',
        line_up = '',
      },
    }
    vim.keymap.set('n', ']e', function()
      miniMove.move_line 'down'
    end, { desc = 'Move Line Below' })
    vim.keymap.set('n', '[e', function()
      miniMove.move_line 'up'
    end, { desc = 'Move Line Above' })

    vim.keymap.set('v', ']e', function()
      miniMove.move_selection 'down'
    end, { desc = 'Move Line Below' })
    vim.keymap.set('v', '[e', function()
      miniMove.move_selection 'up'
    end, { desc = 'Move Line Above' })

    local miniSplitJoin = require 'mini.splitjoin'
    miniSplitJoin.setup {
      mappings = {
        toggle = '',
        split = 'gs',
        join = 'gS',
      },
    }

    -- require('mini.trailspace').setup {}

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
