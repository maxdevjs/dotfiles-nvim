local map = require('utils').map

-- Map leader
map('n', '<Space>', '')
vim.g.mapleader = ' '  -- 'vim.g' sets global variables
-- Map localleader
map('n', ',', '')
vim.g.maplocalleader = ','  -- 'vim.g' sets global variables

-- map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<localleader><esc>', ':nohlsearch<cr>')
-- map('n', '<localleader><esc>', ':nohlsearch<cr>')
map('i', '-[', '- [ ] []()')

-- edit nvim config
map('n', '<localleader>v', ':vsplit ~/.config/nvim/<cr>')
-- source nvim config
-- TODO: redirect to nvim
map('n', '<localleader>s', ':source ~/.config/nvim/init.lua<cr>')

 -- Swap ; to :
map('n', ';', ':')

-- TAB based buffer switch
map('n', '<TAB>', ':bnext<CR>', { silent = true })
map('n', '<S-TAB>', ':bprevious<CR>', { silent = true })

-- Navigate between windows
map('n', '<C-h>', '<C-w><C-h>')
map('n', '<C-j>', '<C-w><C-j>')
map('n', '<C-k>', '<C-w><C-k>')
map('n', '<C-l>', '<C-w><C-l>')

-- Resize windows
-- :help window-resize
map('n', '=', '<C-w>=') -- same dimension
map('n', '+', '<C-w>_<C-w>|') -- maximize horizontally and vertically
map('n', '|', '<C-w>|') -- maximize horizontally
map('n', '_', '<C-w>_') -- maximize vertically
map('n', '<C-Up>', '<C-w>-') -- decrease vertically
map('n', '<C-Down>', '<C-w>+') -- increase vertically
map('n', '<C-Left>', '<C-w><') -- decrease horizontally
map('n', '<C-Right>', '<C-w>>') -- increase horizontally

-- Rotate windows
-- :help window-moving
-- https://stackoverflow.com/questions/4556184/vim-move-window-left-right

-- Move current line / block with Alt-j/k à la vscode ⬆️⬇️
map('n', '<A-j>', ':m .+1<CR>==')
map('n', '<A-k>', ':m .-2<CR>==')
map('i', '<A-j>', '<ESC>:m .+1<CR>==gi')
map('i', '<A-k>', '<ESC>:m .-2<CR>==gi')
-- Move selected line / block of text in visual mode
map('x', '<A-j>', ':m \'>+1<CR>gv-gv')
map('x', '<A-k>', ':m \'<-2<CR>gv=gv')

-- MUST HAVE VIM REMAPS (JULY 2021) https://www.youtube.com/watch?v=hSHATqh8svM
-- joining lines without ✨🕺💃 🎶 cursor
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('n', 'J', 'mzJ`z')

-- Undo break points ⛏️
map('i', ',', ',<C-G>u')
map('i', '.', '.<C-G>u')
map('i', ':', ':<C-G>u')
map('i', ';', ';<C-G>u')
map('i', '!', '!<C-G>u')
map('i', '?', '?<C-G>u')
map('i', '(', '(<C-G>u')
map('i', ')', ')<C-G>u')
map('i', ']', ']<C-G>u')
map('i', '}', '}<C-G>u')

-- Folding
-- https://vim.fandom.com/wiki/Folding
-- https://learnvimscriptthehardway.stevelosh.com/chapters/49.html
map('n', '<Space>', "@=(foldlevel('.')?'za':\"\\<Space>\")<CR>")


-- Control + a to select all file
map('i', '<C-a>', 'ggVG')
map('n', '<C-a>', 'ggVG')
map('v', '<C-a>', 'ggVG')

-- Control + s to save
map('i', '<C-s>', '<Esc>:w<CR>i')
map('n', '<C-s>', ':w<CR>')
map('v', '<C-s>', ':w<CR>')

-- Open the current file in the default program
map('n', '<C-x>', ':!xdg-open %<CR>')



-- TODO: does not work
-- vim.g.kommentary_create_default_mappings = false
-- map("n", "<leader>cc", '<Plug>kommentary_line_default')
-- map("x", "<C-_>", '<Plug>kommentary_line_default')
-- map("i", "<C-_>", '<Plug>kommentary_line_default')
