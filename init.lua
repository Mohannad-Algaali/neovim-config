require 'custom.options'
require 'custom.keymaps'
require 'custom.lazy'
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
require('lazy').setup({

 require 'custom.plugins.highlight-color',
 require 'custom.plugins.gitsigns',
 require 'custom.plugins.which-key',
 require 'custom.plugins.telescope',
 require 'custom.plugins.lazydev',
 require 'custom.plugins.lsp',
 require 'custom.plugins.blink',
 require 'custom.plugins.comments',
 require 'custom.plugins.mini',
 require 'custom.plugins.treesitter',
 require 'custom.plugins.conform',


 require 'custom.themes',



  --
  -- require 'custom.plugins.debug',
  require 'custom.plugins.indent_line',
  -- require 'custom.plugins.lint',
  require 'custom.plugins.autopairs',
  require 'custom.plugins.neo-tree',
  -- require 'custom.plugins.harpoon',
  -- require 'custom.plugins.gitsigns', -- adds gitsigns recommend keymaps
  -- require 'custom.plugins.git-visual',
  -- require 'custom.plugins.vim-be-good',
  require 'custom.plugins.markview',
  -- require 'custom.plugins.rest',
  -- require 'custom.plugins.i18n',
  -- require 'custom.plugins.image',
  -- require 'custom.plugins.copilot',
  require 'custom.plugins.codeium',
  -- require 'custom.plugins.surround',
  require 'custom.plugins.typst',
  -- require 'custom.plugins.android',
  -- require 'custom.plugins.arduino',
  -- require 'custom.plugins.inlay',
  require 'custom.plugins.surround',
  -- require 'custom.plugins.diagram',
  -- require 'custom.plugins.slides',
  require 'custom.plugins.love',

}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
