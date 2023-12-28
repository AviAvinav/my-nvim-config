local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Increment/Decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- New Tab
map("n", "te", ":tabedit<Return>", { silent = true })

-- Split Window
map("n", "ss", ":split<Return><C-w>w", { silent = true })
map("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

-- Move Window
map("n", "<Space>", "<C-w>w")
map("", "sh", "<C-w>h")
map("", "sk", "<C-w>k")
map("", "sj", "<C-w>j")
map("", "sl", "<C-w>l")

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- Neo Tree
map("n", "<C-t>", ":NeoTreeFocusToggle<Return>", { silent = true })
map("n", "nf", ":NeoTreeFloatToggle<Return>", { silent = true })

-- Insert mode bindings
map("i", "jk", "<Esc>")
map("i", "kj", "<Esc>")
-- map("i", "<C-[", "<Esc> o")

-- Telescope
map("n", "ff", ":Telescope find_files<Return>", opts)
map("n", "fg", ":Telescope live_grep<Return>", opts)
map("n", "fb", ":Telescope buffers<Return>", opts)
map("n", "fh", ":Telescope help_tags<Return>", opts)
map("n", "fc", ":lua require'telescope.builtin'.colorscheme{}<Return>", opts)
map("n", "sf", ":Telescope file_browser path=%:p:h select_buffer=true<Return>", opts)

-- Icon Picker
map("i", "<C-k>", "<cmd>IconPickerInsert<cr>", opts)

-- eslint
map("n", "esl", ":EslintFixAll<Return>", { silent = true })

-- buffers
map("n", "bne", ":bnext<Return>", { silent = true })
map("n", "bpr", ":bprevious<Return>", { silent = true })
map("n", "bde", ":bdelete<Return>", { silent = true })

-- Some useful remaps
vim.cmd "cnoreabbrev W! w!"
vim.cmd "cnoreabbrev Q! q!"
vim.cmd "cnoreabbrev Qall! qall!"
vim.cmd "cnoreabbrev Wq wq"
vim.cmd "cnoreabbrev Wa wa"
vim.cmd "cnoreabbrev wQ wq"
vim.cmd "cnoreabbrev WQ wq"
vim.cmd "cnoreabbrev W w"
vim.cmd "cnoreabbrev Q q"
