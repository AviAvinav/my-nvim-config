local Popup = require "nui.popup"
local Layout = require "nui.layout"

local popup = Popup {
  enter = true,
  border = {
    padding = {
      top = 2,
      bottom = 2,
      left = 3,
      right = 3,
    },
    style = {
      top_left = "",
      top = "",
      top_right = "",
      left = "",
      right = "",
      bottom_left = "",
      bottom = "",
      bottom_right = "",
    },
  },
}

local layout = Layout(
  {
    position = "50%",
    size = {
      width = 80,
      height = "60%",
    },
  },
  Layout.Box({
    Layout.Box(popup, { size = "100%" }),
  }, { dir = "row" })
)

popup:map("n", "q", function(bufnr)
  popup:unmount()
end, { noremap = true })

popup:map("n", "<Esc>", function(bufnr)
  popup:unmount()
end, { noremap = true })

local event = require("nui.utils.autocmd").event

popup:on({ event.BufLeave }, function()
  popup:unmount()
  layout:unmount()
end, { once = true })

vim.api.nvim_buf_set_lines(popup.bufnr, 0, 1, false, { "Hello World" })
vim.api.nvim_buf_set_lines(popup.bufnr, 1, 2, false, { "Hello World" })
vim.api.nvim_buf_set_lines(popup.bufnr, 2, 3, false, { "Hello World" })

local NuiText = require "nui.text"

local text = NuiText("Something Went Wrong!", "Error")

local bufnr, ns_id, linenr_start, byte_start = popup.bufnr, -1, 1, 0

text:render(bufnr, ns_id, linenr_start, byte_start)

local current_dir = "row"

popup:map("n", "r", function()
  if current_dir == "col" then
    layout:update(Layout.Box({
      Layout.Box(popup, { size = "100%" }),
    }, { dir = "row" }))

    current_dir = "row"
  else
    layout:update(Layout.Box({
      Layout.Box(popup, { size = "100%" }),
    }, { dir = "col" }))

    current_dir = "col"
  end
end, {})

layout:mount()
