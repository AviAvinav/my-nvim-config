-- Base Options
local O = vim.opt

O.number = true
O.tabstop = 4
O.shiftwidth = 2
O.softtabstop = 4
O.smarttab = true
O.showcmd = true
O.cmdheight = 1
O.wrap = false
O.wildignore:append { "*/node_modules/*" }

local has = function(x)
  return vim.fn.has(x) == 1
end

-- Clipboard
if has "macunix" then
  O.clipboard:append { "unnamedplus" }
end

if has "win32" or has "win64" then
  O.clipboard:append { "unnamed", "unnamedplus" }
end

-- Shell for Windows
if has "win32" or has "win64" then
  vim.cmd "set shell=pwsh"
  vim.cmd "set shellcmdflag=-c"
end

-- Highlights
O.cursorline = true
O.termguicolors = true
O.winblend = 0
O.wildoptions = "pum"
-- O.pumblend = 5
O.background = "dark"

-- vim.cmd [[ hi Cursorline guibg=#1e222a ]]
-- vim.cmd [[ hi Cursor guibg=#000000 ]]
-- vim.cmd [[ hi Cursor guifg=#1e222a ]]
--
-- vim.cmd [[ hi Pmenu guibg=#191e29 ]]
-- vim.cmd [[ hi PmenuSel guibg=#2f394f ]]
