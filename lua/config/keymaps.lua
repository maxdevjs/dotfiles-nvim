-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- TODO: enters command mode, but does not automatically show the UI (as instead does :)
map("n", ";", ":", { desc = "; to :"})
map("n", "<C-a>", "<<Esc>ggVG", { desc = "Control + a to select all file"})
map("n", "<C-x>", ":!xdg-open %<CR>", { desc = "Open the current file in the default program"})

-- Buffers
map("n", "<TAB>", ":bnext<CR>", { desc = "Switch to next buffer"})
map("n", "<S-TAB>", ":bprevious<CR>", { desc = "Switch to previous buffer"})
map("x", "<leader>p", "\"_dP", { desc = "Substitute current visual block without loosing current paste buffer"})

-- Markdown nicities
map("i", "-[", "- [ ] []()", { desc = "- [ ] []()"})

-- Undo break points ⛏️
map("i", ".", ".<C-G>u", { desc = "Set break point"})
map("i", ",", ",<C-G>u", { desc = "Set break point"})
map("i", ":", ":<C-G>u", { desc = "Set break point"})
map("i", ";", ";<C-G>u", { desc = "Set break point"})
map("i", "!", "!<C-G>u", { desc = "Set break point"})
map("i", "?", "?<C-G>u", { desc = "Set break point"})
map("i", "(", "(<C-G>u", { desc = "Set break point"})
map("i", ")", ")<C-G>u", { desc = "Set break point"})
map("i", "[", "[<C-G>u", { desc = "Set break point"})
map("i", "]", "]<C-G>u", { desc = "Set break point"})
map("i", "{", "{<C-G>u", { desc = "Set break point"})
map("i", "}", "}<C-G>u", { desc = "Set break point"})

