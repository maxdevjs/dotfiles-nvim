-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tsserver
-- npm install -g typescript typescript-language-server

require'lspconfig'.solargraph.setup {
	cmd = { "solargraph", "stdio" };
	filetypes = {
		"ruby",
	},
  settings = {
    solargraph = {
      diagnostics = true,
      definitions = true,
    }
  },
	require "lsp_signature".on_attach({
		bind = false,
		--use_lspsaga = true,
		floating_window = true,
		fix_pos = true,
		hint_enable = true,
		hi_parameter = "Search",
		handler_opts = {
			"shadow"
			}
	});
}


