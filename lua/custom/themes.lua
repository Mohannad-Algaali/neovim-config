-- Function to clear backgrounds
local function transparent_neovim()
  local groups = { 'Normal', 'NormalNC', 'SignColumn', 'NormalFloat', 'StatusLine' }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = 'none' })
  end
end

return {

  -- {
  --   'sainnhe/everforest',
  --   config = function()
  --     vim.g.everforest_background = 'hard'
  --     vim.g.everforest_transparent_background = 1 -- Set to 1 or 2
  --     -- vim.cmd.colorscheme 'everforest'
  --   end,
  -- },
  -- {
  --   'EdenEast/nightfox.nvim',
  --   config = function() end,
  -- },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'auto', -- latte, frappe, macchiato, mocha
        transparent_background = true,
      }
      vim.cmd.colorscheme 'catppuccin'
      -- Apply transparency after colorscheme is loaded
      transparent_neovim()
    end,
  },
  -- { -- You can easily change to a different colorscheme.
  --   -- Change the name of the colorscheme plugin below, and then
  --   -- change the command in the config to whatever the name of that colorscheme is.
  --   --
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --   'rebelot/kanagawa.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     require('kanagawa').setup {
  --       styles = {
  --         comments = { italic = false }, -- Disable italics in comments
  --       },
  --       opts = {
  --         transparent = true, -- Set the background to transparent
  --         theme = 'wave', -- You can choose "wave", "dragon", or "lotus"
  --         -- Other options can be added here if needed
  --       },
  --       config = function(_, opts)
  --         require('kanagawa').setup(opts)
  --       end,
  --     }
  --   end,
  -- },

}
