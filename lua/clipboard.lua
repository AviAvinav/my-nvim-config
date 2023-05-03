local has = function(x)
  return vim.fn.has(x) == 1
end

if has "macunix" then
  vim.opt.clipboard:append { "unnamedplus" }
end

if has "win32" or has "win64" then
  vim.opt.clipboard:append { "unnamed", "unnamedplus" }
end
