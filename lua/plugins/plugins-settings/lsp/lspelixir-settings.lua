-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tsserver
-- npm install -g typescript typescript-language-server

require'lspconfig'.elixirls.setup {
	cmd = {"elixir-ls"};
	-- cmd = {"/home/maxdevjs/Me/system/bin/elixir-ls/launch.sh"};
	filetypes = {
		"elixir", "eelixir",
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


