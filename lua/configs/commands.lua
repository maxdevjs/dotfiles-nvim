-- vim.api.nvim_command -> vim.cmd

-- https://jdhao.github.io/2020/05/22/highlight_yank_region_nvim/
-- https://github.com/neovim/neovim/pull/12279
vim.cmd [[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=1700}
augroup END
]]

vim.cmd [[
augroup kitty_mp
    autocmd!
    au VimLeave * :silent !kitty @ set-spacing padding=20 margin=10
    au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0
augroup END
]]

-- folding
-- enabled by syntax, files opened are unfolded
vim.cmd [[
  set foldmethod=syntax
  au BufWinEnter * normal zR
]]

-- https://github.com/nanotee/nvim-lua-guide#tips-3
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
    return ...
end
