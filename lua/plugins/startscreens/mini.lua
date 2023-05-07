local mikeyheader = table.concat({
  [[⠀⠀⠀⠀⠀⠀⠀⠀⣴⢊⣿⣿⡿⠿⠿⣿⣿⣿⣿⣿⣿⣵⡀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⣀⠠⣀⣴⢾⣿⣿⣿⠏⠀⠀⠀⠀⠀⢸⣣⣿⡻⣸⣷⡄⠀⠀⠀⠀]],
  [[⠀⠀⠀⢈⡿⣿⣿⣿⣎⣿⡏⠀⠀⠀⠀⠀⠀⣿⣿⣿⣷⣿⣿⣿⠀⠀⠀⠀]],
  [[⠀⠀⠀⠠⢼⣿⢟⣿⣷⣷⠤⠤⠤⠄⠀⠀⣼⣽⡿⢽⣿⣿⣿⣿⡄⠀⠀⠀]],
  [[⠀⠀⠀⠀⠞⣃⣸⣿⣿⣟⡠⣭⡵⡄⣠⣾⣿⣿⣁⣸⣿⠿⡿⠛⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠈⠁⢛⣿⡿⠕⠋⠁⠩⠟⠟⠑⠛⢣⡿⡿⢶⡅⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠘⢌⠻⠀⠀⠀⠀⠀⠀⠀⠀⠉⠠⢃⠟⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⢀⣠⣴⠋⢆⠀⠀⠀⠀⠀⠀⠀⢀⣻⣦⣤⡀⠀⠀⠀⠀⠀]],
  [[⠀⠀⢀⠠⠐⠈⠉⣿⣿⠀⠀⠗⢄⠀⠀⠀⡠⡔⣟⢻⣿⡟⠀⠁⠂⠄⡀⠀]],
  [[⠀⡐⠁⠀⠀⠀⠀⣿⣿⠀⠀⠐⡀⠈⠀⠁⡐⠀⠀⢸⣿⡇⠀⠀⠀⠀⠈⠆]],
  [[⢀⠁⠀⠀⠀⠀⢀⣿⣿⡀⠐⠂⠠⢀⢀⠨⠀⠐⠂⣽⣿⠁⠀⠀⠀⠀⠀⠀]],
  [[⠘⢀⠀⠀⢀⠄⢸⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⠀⠀⡀⠀⠀⠀⠀]],
  [[⠀⠀⠈⠐⠅⡄⣼⣿⣿⣿⣿⣦⣄⣀⣀⣀⣴⣿⣿⣿⣿⡄⡄⢈⠠⠀⠀⠀]],
  [[⠀⠀⠀⠀⠐⠂⠉⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠒⠀⠀⠂⠠⠤⠌⠙⢿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⢀⣀⠁⠀⠀⠀]],
}, "\n")

local neovimheader = table.concat({
  [[  /\ \▔\___  ___/\   /(●)_ __ ___  ]],
  [[ /  \/ / _ \/ _ \ \ / / | '_ ` _ \ ]],
  [[/ /\  /  __/ (_) \ V /| | | | | | |]],
  [[\_\ \/ \___|\___/ \_/ |_|_| |_| |_|]],
  [[───────────────────────────────────]],
  [[───────────────────────────────────]],
}, "\n")

local greeting = function()
  local hour = tonumber(vim.fn.strftime "%H")
  -- [04:00, 12:00) - morning, [12:00, 20:00) - day, [20:00, 04:00) - evening
  local part_id = math.floor((hour + 4) / 8) + 1
  local day_part = ({ "evening", "morning", "afternoon", "evening" })[part_id]
  local username = vim.loop.os_get_passwd()["username"] or "USERNAME"

  return ("Good %s, %s"):format(day_part, username)
end

return {
  "echasnovski/mini.starter",
  version = "*",
  event = "VimEnter",
  config = function()
    require("mini.starter").setup {
      header = neovimheader,
      footer = table.concat { greeting(), "\n\n", os.date "%a %b %d | %I:%M %p" },
      items = {
        {
          action = "Telescope file_browser path=%:p:h select_buffer=true<Return>",
          name = "B: File Browser",
          section = "Telescope",
        },
        {
          action = "Telescope find_files path=%:p:h<Return>",
          name = "F: Find Files",
          section = "Telescope",
        },
        {
          action = "te",
          name = "E: New Buffer",
          section = "Builtin actions",
        },
        {
          action = "qall!",
          name = "Q: Quit Neovim",
          section = "Builtin actions",
        },
      },
    }

    vim.cmd [[
  		augroup MiniStarterJK
  			au!
  			au User MiniStarterOpened nmap <buffer> j <Cmd>lua MiniStarter.update_current_item('next')<CR>
  			au User MiniStarterOpened nmap <buffer> k <Cmd>lua MiniStarter.update_current_item('prev')<CR>
  			au User MiniStarterOpened nmap <buffer> ff <Cmd>Telescope find_files<CR>
  			au User MiniStarterOpened nmap <buffer> sf <Cmd>Telescope file_browser<CR>
  		augroup END
]]
  end,
}

-- check this for more: https://www.reddit.com/r/neovim/comments/xlzxt3/ministarter_config_that_looks_like_alpha/