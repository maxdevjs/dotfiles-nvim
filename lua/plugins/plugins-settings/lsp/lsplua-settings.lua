-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#sumneko_lua

local lua_runtime_path = vim.split(package.path, ';')

require'lspconfig'.sumneko_lua.setup {
	cmd = {"lua-language-server", };
  -- require'lsp_signature'.on_attach(lspsignature);
	-- require "lsp_signature".on_attach({
	-- 	bind = false,
	-- 	--use_lspsaga = true,
	-- 	floating_window = true,
	-- 	fix_pos = true,
	-- 	hint_enable = true,
	-- 	hi_parameter = "Search",
  --   doc_lines = 0,
	-- 	handler_opts = {
	-- 		"shadow"
	-- 		}
	-- 	});
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = lua_runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
				preloadFileSize = 500,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}


