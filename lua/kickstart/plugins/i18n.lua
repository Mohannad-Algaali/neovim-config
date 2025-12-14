
return {
  "yelog/i18n.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local utils = require("utils.i18n")
    local locales_path = utils.detect_locales_path()

    require("i18n").setup({
      locales_path = locales_path,
      enable_keymap = false, -- we define our own
    })
  end,
}

