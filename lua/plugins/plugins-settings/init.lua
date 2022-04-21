-- same as 'plugins/plugins-settings/'
local psdir = 'plugins.plugins-settings.'

-- colorscheme
-- require(psdir .. 'catppuccino-settings')
require(psdir .. 'monarized-settings')
-- require(psdir .. 'tokyodark-settings')
require(psdir .. 'tokyonight-settings')
-- TODO: configure?
require(psdir .. 'rose-pine-settings')

-- set colorscheme
-- require('rose-pine').set();
-- vim.cmd[[colorscheme catppuccino]]
-- vim.cmd[[colorscheme vimconflive-2021]]

-- jhchabran/monarized
require('colorbuddy').colorscheme('monarized')
-- optional: adjust style
-- gray-dark gruvbox-dark nord-dark purple-dark sienna
require("monarized").set_style("sienna")

-- vim.cmd("colorscheme tokyodark")
vim.cmd[[colorscheme tokyodark]]

-- editor goodness
require(psdir .. 'nvimneoclip-settings')
require(psdir .. 'jabs-settings')
require(psdir .. 'mkdir-settings')
require(psdir .. 'specs-settings')

-- git
-- FIX: 'nvim  $argv' terminated by signal SIGABRT (Abort) 
-- require(psdir .. 'neogit-settings')

-- languages
require(psdir .. 'emmet-settings')

-- lsp
require(psdir .. 'lsp')
--require( psdir .. 'lsp/lspsignature-settings')

-- per-plugin settings
require(psdir .. 'autopairs-settings')
-- require(psdir .. 'colorizer-settings')
require(psdir .. 'vimhexokinase-settings')
require(psdir .. 'compe-settings')
require(psdir .. 'nvimtsrainbow-settings')
require(psdir .. 'treesitter-settings')
require(psdir .. 'nvimhardline-settings')
require(psdir .. 'zenmode-settings')


