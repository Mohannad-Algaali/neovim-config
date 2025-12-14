local M = {}

local uv = vim.loop

-- find project root
local function get_root()
  return vim.fs.root(0, {
    'package.json',
    'tsconfig.json',
    'jsconfig.json',
    '.git',
  }) or vim.fn.getcwd()
end

-- check if directory exists
local function is_dir(path)
  local stat = uv.fs_stat(path)
  return stat and stat.type == 'directory'
end

-- auto-detect locales directory
function M.detect_locales_path()
  local root = get_root()

  local candidates = {
    'locales',
    'locale',
    'i18n',
    'src/locales',
    'src/i18n',
    'resources/lang',
    'lib/locales',
    'client/lib/locales',
  }

  for _, dir in ipairs(candidates) do
    local full = root .. '/' .. dir
    if is_dir(full) then
      return full
    end
  end

  return nil
end

return M
