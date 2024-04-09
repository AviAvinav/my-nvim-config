local M = {
  "letieu/btw.nvim",
}

local hour = tonumber(vim.fn.strftime "%H")
local part_id = math.floor((hour + 4) / 8) + 1
local day_part = ({ "evening", "morning", "afternoon", "evening" })[part_id]
local username = vim.loop.os_get_passwd()["username"] or "USERNAME"

local avimheader = table.concat({
  [[     _____       .__		  ]],
  [[  /  _  \___  _|__| _____     ]],
  [[ /  /_\  \  \/ /  |/     \    ]],
  [[/    |    \   /|  |  Y Y  \   ]],
  [[\____|__  /\_/ |__|__|_|  /   ]],
  [[        \/              \/    ]],
  [[──────────────────────────────]],
  [[──────────────────────────────]],
}, "\n")

M.opts = {
  -- text = "Good " .. day_part .. ", " .. username .. "!\n",
  -- text = "Good day\n bye",
  -- text = { [[ day ]], [[dasdfa]] },
  -- text = { "d", "d" },
}

-- will use it later when it is patched a bit more
-- return M
return {}
