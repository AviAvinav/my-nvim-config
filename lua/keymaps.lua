local keymap = vim.keymap

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- New Tab
keymap.set("n", "te", ":tabedit<Return>", { silent = true })

-- Split Window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

-- Move Window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Neo Tree
keymap.set("n", "<C-t>", ":NeoTreeFocusToggle<Return>", { silent = true })
keymap.set("n", "ntf", "NeoTreeFloatToggle<Return>", { silent = true })

-- Telescope
local builtin = require "telescope.builtin"
local opts = { noremap = true, silent = true }

keymap.set("n", "ff", builtin.find_files, opts)
keymap.set("n", "fg", builtin.live_grep, opts)
keymap.set("n", "fb", builtin.buffers, opts)
keymap.set("n", "fh", builtin.help_tags, opts)

vim.api.nvim_set_keymap(
  "n",
  "sf",
  ":Telescope file_browser path=%:p:h select_buffer=true<Return>",
  { noremap = true, silent = true }
)

-- eslint
keymap.set("n", "esl", ":EslintFixAll<Return>", { silent = true })

-- buffers
keymap.set("n", "bne", ":bnext<Return>", { silent = true })
keymap.set("n", "bpr", ":bprevious<Return>", { silent = true })
keymap.set("n", "bde", ":bdelete<Return>", { silent = true })

-- Icon Picker

keymap.set("i", "<C-k>", "<cmd>IconPickerInsert<cr>", opts)
