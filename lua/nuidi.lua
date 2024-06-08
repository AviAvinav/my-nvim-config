-- local Popup = require "nui.popup"
--
-- local popup = Popup {
--   position = "50%",
--   size = {
--     width = 100,
--     height = 20,
--   },
--   enter = true,
--   focusable = true,
--   zindex = 50,
--   relative = "editor",
--   -- border = {
--   --   padding = {
--   --     top = 2,
--   --     bottom = 2,
--   --     left = 3,
--   --     right = 3,
--   --   },
--   --   style = "rounded",
--   --   text = {
--   --     top = " I am top title ",
--   --     top_align = "center",
--   --     bottom = "I am bottom title",
--   --     bottom_align = "left",
--   --   },
--   -- },
--   buf_options = {
--     modifiable = true,
--     readonly = false,
--   },
--   win_options = {
--     winblend = 10,
--     winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
--   },
-- }
--
-- popup:map("n", "<esc>", ":q<cr>")
-- popup:map("n", "q", ":q<cr>")
--
-- local NuiText = require "nui.text"
--
-- local text = NuiText("Something Went Wrong!", "Error")
--
-- local bufnr, ns_id, linenr_start, byte_start = popup.bufnr, popup.winid, 1, 0
--
-- text:render(bufnr, ns_id, linenr_start, byte_start)
--
-- popup:mount()
--

local Layout = require "nui.layout"
local Popup = require "nui.popup"
local event = require("nui.utils.autocmd").event

local popup = Popup {
  enter = true,
  border = {
    style = {
      top_left = " ",
      top = " ",
      top_right = " ",
      left = " ",
      right = " ",
      bottom_left = " ",
      bottom = " ",
      bottom_right = " ",
    },
  },
}

local layout = Layout(
  {
    position = "50%",
    size = {
      width = 110,
      height = 23,
    },
  },
  Layout.Box({
    Layout.Box(popup, { size = "100%" }),
  }, { dir = "col" })
)

popup:map("n", "<esc>", function()
  popup:unmount()
  layout:unmount()
end)

popup:map("n", "q", function()
  popup:unmount()
  layout:unmount()
end)

popup:on({ event.BufLeave }, function()
  popup:unmount()
  layout:unmount()
end, { once = true })

vim.api.nvim_buf_set_text(popup.bufnr, 0, 0, 1, 0, { "Something", "Went", "Wrong" })

layout:mount()
