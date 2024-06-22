-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
------------------------
-- Treesitter
------------------------
lvim.builtin.treesitter.ensure_installed = {"php"}

------------------------
-- Keymaps
------------------------

-- Use MacOS Option as Meta Key
vim.g.neovide_input_macos_option_key_is_meta = 'only_left'

-- Move line Up / Down
lvim.keys.normal_mode["<A-j>"] = ":move .+1<CR>=="
lvim.keys.normal_mode["<A-k>"] = ":move .-2<CR>=="
lvim.keys.visual_mode["<A-j>"] = ":move '>+1<CR>gv-gv"
lvim.keys.visual_mode["<A-k>"] = ":move '<-2<CR>gv-gv"

lvim.keys.normal_mode["<M-j>"] = ":move .+1<CR>=="
lvim.keys.normal_mode["<M-k>"] = ":move .-2<CR>=="
lvim.keys.visual_mode["<M-j>"] = ":move '>+1<CR>gv-gv"
lvim.keys.visual_mode["<M-k>"] = ":move '<-2<CR>gv-gv"

-- Select all
lvim.keys.normal_mode["<D-a>"] = "gg<S-v>G"

-- Telescope
lvim.builtin.which_key.mappings["r"] = {"<Cmd> Telescope live_grep<CR>", "TELESCOPE LIVE GREP"}
lvim.builtin.which_key.mappings["e"] = {":NvimTreeFindFile<CR>", "NVIMTREE FIND FILE", {
    noremap = false
}}
lvim.builtin.which_key.mappings["E"] = {":NvimTreeToggle<CR>", "NVIMTREE TOGGLE", {
    noremap = false
}}

-- Split window
lvim.keys.normal_mode["<S-Enter>"] = ":split<CR>"
lvim.keys.normal_mode["<S-C-Enter>"] = ":vsplit<CR>"

-- Buffer
lvim.keys.normal_mode["<C-tab>"] = ":bnext<CR>"
lvim.keys.normal_mode["<C-s-tab>"] = ":bprev<CR>"
-- Reset buffer
lvim.keys.normal_mode["<D-q>"] = ":e!<CR>"
-- Close buffer
lvim.keys.normal_mode["<D-w>"] = ":bd<CR>"

-- Save like in MacOS
lvim.keys.normal_mode["<D-s>"] = ":update<Return>"
-- Undo like in MacOS
lvim.keys.normal_mode["<D-z>"] = ":undo<CR>"
-- Redo like in MacOS
lvim.keys.normal_mode["<D-S-z>"] = ":redo<CR>"

vim.opt.title = true
vim.opt.backup = false
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.scrolloff = 10
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.showcmd = true
vim.opt.backup = false
vim.opt.path:append({"**"})
vim.opt.wildignore:append({"*/node_modules/*"})
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.relativenumber = true

vim.g.remember_window_size = true
vim.g.remember_window_position = true
vim.g.neovide_cursor_vfx_mode = "pixiedust"

-- Helper function for transparency formatting
local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.92
vim.g.neovide_background_color = "#0f1117" .. alpha()
