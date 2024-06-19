local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')
-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("v", "D-c", '"+y<CR>')
keymap.set("n", "D-v", '"+p<CR>')

-- Move line Up / Down
keymap.set("n", "<A-j>", ":move .+1<CR>==")
keymap.set("n", "<A-k>", ":move .-2<CR>==")
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file
keymap.set("n", "<D-s>", ":update<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>e", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>E", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w-h>", "<C-w><")
keymap.set("n", "<C-w-l>", "<C-w>>")
keymap.set("n", "<C-w-k>", "<C-w>+")
keymap.set("n", "<C-w-j>", "<C-w>-")

-- Formatting

keymap.set("n", "<A-S-f>", ":LazyFormat<return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)
