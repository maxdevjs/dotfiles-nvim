return { -- This plugin
  "Zeioth/compiler.nvim",
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
  dependencies = { "stevearc/overseer.nvim" },
  opts = { -- The task runner we use
	},
  -- Open compiler
  --vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	-- Open compiler
	vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true }),

	-- Redo last selected option
	vim.api.nvim_set_keymap('n', '<S-F6>',
		   "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
		.. "<cmd>CompilerRedo<cr>",
	 { noremap = true, silent = true }),

	-- Toggle compiler results
	vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true }),

}

