vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Running tmux-sessionizer script
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
--
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Zk mapping
vim.keymap.set("v", "<leader>zn", ":'<,'>ZkNewFromTitleSelection<CR>", { desc = "Create note from selection" })
vim.keymap.set("n", "<leader>zl", "<Cmd>ZkLinks<CR>", { desc = "Insert link to note" })
vim.keymap.set("n", "<leader>zb", "<Cmd>ZkBacklinks<CR>", { desc = "Show backlinks" })
vim.keymap.set("n", "<leader>zt", "<Cmd>ZkTags<CR>", { desc = "Browse by tags" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>dm", vim.diagnostic.open_float, { desc = "Show diagnostic messge" })

-- Move highlighted line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- Append line below with space

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Jump half page down with cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Jump half page up with cursor in the middle

vim.keymap.set("n", "<leader>d", '"_d') -- Delete to void register
vim.keymap.set("v", "<leader>d", '"_d') -- Delete to void register

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Start changing the word you're on

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
--
-- vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
-- vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
-- vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
-- vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
