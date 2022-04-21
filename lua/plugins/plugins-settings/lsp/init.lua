local psdir = 'plugins/plugins-settings/'
-- https://github.com/ray-x/lsp_signature.nvim/issues/1#issuecomment-865137902
require(psdir .. '/lsp/lspkeybindings')
require(psdir .. '/lsp/lspsignature-settings')
require(psdir .. '/lsp/lspelixir-settings')
require(psdir .. '/lsp/lsplua-settings')
-- ror -> Ruby/Rails
require(psdir .. '/lsp/lspror-settings')
require(psdir .. '/lsp/lsptsserver-settings')

