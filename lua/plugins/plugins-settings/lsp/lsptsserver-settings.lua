-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tsserver
-- npm install -g typescript typescript-language-server

require'lspconfig'.tsserver.setup {
	cmd = {"typescript-language-server", "--stdio" };
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
  },
  diagnostics = {
    -- Get the language server to recognize the `vim` global
    globals = {'vim'},
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


