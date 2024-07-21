-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[
    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=1700}
    augroup END
]])

vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimLeave * if !empty($KITTY_WINDOW_ID) | :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=20 margin=0
    au VimEnter * if !empty($KITTY_WINDOW_ID) | :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0 margin=0
    au BufEnter * if !empty($KITTY_WINDOW_ID) | :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0 margin=0
augroup END
]])
