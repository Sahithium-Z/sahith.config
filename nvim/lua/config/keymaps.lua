-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Dvorak Keymaps
keymap("n", "t", "j", opts)
keymap("n", "n", "k", opts)
keymap("n", "s", "l", opts)
keymap("n", "T", "J", opts)
keymap("n", "N", "K", opts)
keymap("n", "S", "L", opts)
keymap("n", "j", "t", opts)
keymap("n", "k", "n", opts)
keymap("n", "l", "s", opts)
keymap("n", "J", "T", opts)
keymap("n", "K", "N", opts)
keymap("n", "L", "S", opts)

-- Better window navigation
vim.keymap.del("n", "<C-h>", opts)
vim.keymap.del("n", "<C-j>", opts)
vim.keymap.del("n", "<C-k>", opts)
vim.keymap.del("n", "<C-l>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-t>", "<C-w>j", opts)
keymap("n", "<C-n>", "<C-w>k", opts)
keymap("n", "<C-s>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-n>", ":bnext<CR>", opts)
keymap("n", "<S-t>", ":bprevious<CR>", opts)
