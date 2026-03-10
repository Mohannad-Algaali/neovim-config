require 'custom.options'
require 'custom.keymaps'
require 'custom.lazy'
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
require('lazy').setup {
  -- base plugins
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
  -- theme
  require 'custom.themes',

  -- my plugins
  require 'custom.plugins.indent_line',
  require 'custom.plugins.autopairs',
  -- require 'custom.plugins.neo-tree',
  require 'custom.plugins.markview',
  require 'custom.plugins.codeium',
  -- require 'custom.plugins.typst',
  require 'custom.plugins.love',
  require 'custom.plugins.oil',
  require 'custom.plugins.alpha',
  -- require 'custom.plugins.power-mode',
}

require 'utils.oil'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
