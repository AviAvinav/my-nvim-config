local greeting = function()
  local hour = tonumber(vim.fn.strftime "%H")
  local part_id = math.floor((hour + 4) / 8) + 1
  local day_part = ({ "evening", "morning", "afternoon", "evening" })[part_id]
  local username = vim.loop.os_get_passwd()["username"] or "USERNAME"

  return ("Good %s, @%s"):format(day_part, username)
end

local split = function(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
    table.insert(t, str)
  end
  return t
end

local version = function()
  local version = split(split(vim.fn.execute "version", "\n")[1], "-")

  return ("%s (%s)"):format(version[1], version[2])
end
local M = {

  "echasnovski/mini.starter",
  opts = {
    items = { { name = "", action = "", section = "" } },
    header = function()
      local nonsense = string.format(
        "%s\n%s\n%s\n%s",
        -- stylua: ignore
        "✨",
        greeting(),
        "I use neovim btw",
        version()
      )
      return nonsense
    end,
    footer = "... que sera, sera ...",
  },
}
vim.cmd [[
    		augroup MiniStarterJK
    			au!
    			au User MiniStarterOpened nmap <buffer> j <Cmd>lua MiniStarter.update_current_item('next')<CR>
    			au User MiniStarterOpened nmap <buffer> k <Cmd>lua MiniStarter.update_current_item('prev')<CR>
    			au User MiniStarterOpened nmap <buffer> ff <Cmd>Telescope find_files<CR>
  				au User MiniStarterOpened nmap <buffer> sf <Cmd>Telescope file_browser<CR>
    			au User MiniStarterOpened nmap <buffer> nf <Cmd>NeoTreeFloatToggle<CR>
  				au User MiniStarterOpened nmap <buffer> fg <Cmd>Telescope live_grep<CR>
    		augroup END
  ]]

return M
