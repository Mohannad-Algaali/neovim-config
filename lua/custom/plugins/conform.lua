return { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,

      format_on_save = false,
      -- format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      -- local disable_filetypes = { c = true, cpp = true }
      -- if disable_filetypes[vim.bo[bufnr].filetype] then
      --   return nil
      -- else
      --   return {
      --     timeout_ms = 500,
      --     lsp_format = 'fallback',
      --   }
      -- end
      formatters = {
        prettier = {
          -- This function prepends arguments to the prettier command
          prepend_args = function()
            return {
              '--tab-width',
              '4',
              '--config-precedence', -- Optional: ensures CLI args take precedence over any config files
              'prefer-file',
            }
          end,
          -- Alternatively, you can use 'args' to set global options that are always used
          -- args = { "--tab-width", "4" },
        },
        prisma = {
          command = 'bunx',
          args = { 'prisma', 'format', '--schema', '$FILENAME' },
          stdin = false,
        },
      }, -- end,
      formatters_by_ft = {
        -- Lua
        lua = { 'stylua' },
        -- Python
        python = { 'isort', 'black' },
        -- PHP
        php = { 'pint' },
        -- Rust
        rust = { 'rustfmt' },
        -- Kotlin
        kotlin = { 'ktlint' },
        -- Go
        go = { 'gofmt' },
        -- Prisma
        prisma = { 'prisma' },
        -- Anything Else(Mainly JS, TS, CSS, HTML, YAML, JSON)
        ['*'] = { 'prettier' },
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  }
