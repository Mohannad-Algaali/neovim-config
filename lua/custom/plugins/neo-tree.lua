-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  event_handlers = {
    {
      event = 'file_opened',
      handler = function(file_path)
        -- This closes the NeoTree window in the current tab
        require('neo-tree.command').execute { action = 'close' }
      end,
    },
  },
  init = function()
    vim.g.neotree = {
      auto_close = true,
      auto_open = false,
      auto_update = true,
      update_to_buf_dir = true,
    }
  end,
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filesystem = {
        hide_hidden = false,
        always_show_by_pattern = { -- uses glob style patterns
          '.env*',
        },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['s'] = function(state)
            local node = state.tree:get_node()
            if node.type == 'file' then
              vim.fn.system { 'xdg-open', node.path }
            end
          end,
        },
      },
    },
  },
}
