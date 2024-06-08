local n = require "nui-components"

local renderer = n.create_renderer {
  width = 100,
  height = 20,
}
--
-- local body = function()
-- return n.rows(
-- n.columns(
-- { flex = 0 },
-- n.text_input {
-- autofocus = true,
-- flex = 1,
-- max_lines = 1,
-- },
-- n.gap(1),
-- n.button {
-- label = "Send",
-- padding = {
-- top = 1,
-- },
-- }
-- ),
-- n.paragraph {
-- lines = "nui.components",
-- align = "center",
-- is_focusable = false,
-- }
-- )
-- end
--
renderer:add_mappings {
  mode = "n",
  key = "<Esc>",
  action = function()
    renderer:close()
  end,
}
--
-- renderer:render(body)

local signal = n.create_signal {
  active_tab = "Telescope",
}

local is_tab_active = n.is_active_factory(signal.active_tab)

local body = function()
  return n.tabs(
    { active_tab = signal.active_tab },
    n.columns(
      { flex = 0 },
      n.button {
        label = "Telescope",
        global_press_key = "<S-u>",
        is_active = is_tab_active "Telescope",
        on_press = function()
          signal.active_tab = "Telescope"
        end,
      },
      n.gap(1),
      n.button {
        label = "I Tab #2",
        global_press_key = "<S-i>",
        is_active = is_tab_active "tab-2",
        on_press = function()
          signal.active_tab = "tab-2"
        end,
      },
      n.gap(1),
      n.button {
        label = "O Tab #3",
        global_press_key = "<S-o>",
        is_active = is_tab_active "tab-3",
        on_press = function()
          signal.active_tab = "tab-3"
        end,
      }
    ),
    n.gap(1),
    n.tab(
      { id = "Telescope" },
      n.paragraph {
        lines = "nui.components",
      }
    ),
    n.tab(
      { id = "tab-2" },
      n.paragraph {
        lines = "tab #2 content",
      }
    ),
    n.tab(
      { id = "tab-3" },
      n.paragraph {
        lines = "tab #3 content",
      }
    )
  )
end

renderer:render(body)
