local o = vim.opt                 -- vim.api.nvim_set_option() — global options
local wo = vim.wo                 -- vim.api.nvim_win_set_option() — window-local options
local bo = vim.bo                 -- vim.api.nvim_buf_set_option() — buffer-local options

-- global options
o.backspace = 'indent,eol,start'  -- intuitive backspacing, not only against inserted text
o.backup = false                -- create a backup file
o.breakindent = true              -- indent wrapped lines
o.clipboard = 'unnamedplus'       -- use the + register (sync with system clipboard, ctrl-v paste in term)
o.cmdheight = 2                   -- cmdline height
-- o.colorcolumn = '81'              -- mark column 81
o.colorcolumn = {1,2,3,4,5}         -- left shadow
o.completeopt = 'menuone,noselect,noinsert'
o.cursorline = true               -- highlight currently under cursor line
o.encoding = 'utf-8'
o.fileformat = 'unix'             -- <nl> on EOL
o.fileencoding = 'utf-8'
-- o.hlsearch = false                -- disable search hihglight of all matches
-- o.incsearch = false               -- disable search matches when typing
o.laststatus = 2                  -- always how status line (filename, etc)
o.linebreak = true                -- do not break words on line wrap
o.linespace = 10                  -- font spacing
o.modelines = 1                   -- read modeline at EOF
o.mouse = 'a'                      -- enable mouse
o.number = true                   -- show absolute cursor line number in ruler
o.relativenumber = true           -- Relative line numbers
o.ruler = true                    -- show line,col at cursor pos
o.scrolloff = 3                   -- min number of lines between cursor and screen edge
o.sidescrolloff = 5               -- min number of cols between cursor and screen edge
o.shiftround = true               -- multiples of 'shiftwidth' when using the operators '>' and '<'
o.shiftwidth = 2                  -- size of an indent
-- o.showbreak = '↪'
-- o.showmatch = false
o.showmode = true                 -- show current mode (insert, visual, etc) under cmdline
o.synmaxcol = 250                 -- syntax highlighting reduced to reasonable column
o.swapfile = false              -- creates a swapfile
o.tabstop = 2                     -- Number of spaces tabs count for
o.textwidth = 78                  -- max text width for paste operations
o.termguicolors = true            -- enable true color (24bit) support
o.undofile = false              -- disnable persisten undo
o.updatetime = 250                -- decrease update time
o.wrap = true                     -- wrap long lines

-- window-local options
wo.signcolumn = 'yes'               -- show sign column at first column

-- buffer-local options
bo.expandtab = true                -- Use spaces instead of tabs
