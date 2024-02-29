-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- Control + a to select all file
map("n", "<C-a>", "<<Esc>ggVG", { desc = "Control + a to select all file"})
-- Open the current file in the default program
map("n", "<C-x>", ":!xdg-open %<CR>", { desc = "Open the current file in the default program"})

