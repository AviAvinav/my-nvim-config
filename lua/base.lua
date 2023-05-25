vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.wrap = false
vim.opt.wildignore:append { "*/node_modules/*" }

local has = function(x)
	return vim.fn.has(x) == 1
end

if has "win32" or has "win64" then
	vim.cmd "set shell=pwsh"
	vim.cmd "set shellcmdflag=-c"
end
