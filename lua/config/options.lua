-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.clipboard = "unnamedplus"

opt.ruler = true
-- opt.colorcolumn = opt.colorcolumn + 1
-- https://stackoverflow.com/questions/36950231/auto-wrap-lines-in-vim-without-inserting-newlines
opt.statuscolumn = "%s %l %r"
opt.textwidth = 70
opt.wrapmargin = 70
opt.linebreak = true
opt.columns = 70
opt.wrap = true

-- First columns shadow
-- opt.textwidth = 1
-- opt.colorcolumn = opt.colorcolumn + 1, +2, +3, +4
-- opt.colorcolumn =

vim.cmd([[
augroup vimrc_autocmds
au!
"https://blog.hanschen.org/2012/10/24/different-background-color-in-vim-past-80-columns/
" autocmd BufEnter * set textwidth=70
" let &colorcolumn=join(range(51,999),",")
"https://www.reddit.com/r/vim/comments/yiplkt/how_to_highlight_first_character_only/"
autocmd BufEnter * match Error /\%51v.\+/
autocmd BufEnter * set colorcolumn=+0,+1,+2,+3,+4
autocmd BufEnter * hi ColorColumn guibg=#2d2d2d ctermbg=246
    autocmd BufEnter * highlight OverLength ctermfg=white guibg=#592929 
    autocmd BufEnter * match OverLength /\%70v.*/
augroup END
]])
