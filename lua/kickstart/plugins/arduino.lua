return {
  "glebzlat/arduino-nvim",
  ft = { "ino", "cpp", "c" }, -- File types to attach to
  dependencies = {
    "neovim/nvim-lspconfig",
    -- Other dependencies like nvim-cmp for autocompletion
  },
  config = function()
    require("arduino-nvim").setup({
      -- Optional: custom path to arduino-language-server executable
      -- language_server_path = "/usr/bin/arduino-language-server",
      -- Optional: extra arguments for the language server
      -- extra_args = { ... },
    })
  end,
}
