-- vim.cmd[[set rtp+=$(pwd)]]
-- vim.cmd[[set rtp+=~/.config/nvimlua]]

require('configs')
-- plugins
require('plugins') -- lua/plugins/init.lua
-- plugins settings
require('plugins/plugins-settings') -- lua/plugins-settings/init.lua

-- print "💪😍🎉"

-- local ts_utils = require 'nvim-treesitter.ts_utils';
-- local node = ts_utils.get_node_at_cursor();
-- print(node)
-- local targetLineNumber = node:end_();
-- -- https://github.com/haringsrob/nvim_context_vt/blob/24e892d957277cd2fad6764a70045f0e63aea950/lua/nvim_context_vt.lua#L76
-- vim.api.nvim_buf_set_virtual_text(0, 0, targetLineNumber, {{ 'virtualText', 'Error' }}, {});
