local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require "paq" {
  "savq/paq-nvim";                  -- Let Paq manage itself

  -- ".local/share/nvim/site/pack/paqs/start/testmy";
  -- vim.opt.runtimepath:append("~/Desktop/test_context");

  -- utils
  "tjdevries/colorbuddy.nvim";
  "nvim-lua/plenary.nvim";
  --   "gelguy/wilder.nvim";

  -- colorschemes
  -- "yashguptaz/calvera-dark.nvim";
  "rockerBOO/boo-colorscheme-nvim";
  "Pocco81/Catppuccino.nvim";
  "jhchabran/monarized";
  "monsonjeremy/onedark.nvim";
  "rose-pine/neovim";
  "tiagovla/tokyodark.nvim";
  "folke/tokyonight.nvim";
  "vim-conf-live/vimconflive2021-colorscheme";
  "whatyouhide/vim-gotham";

  -- editor goodness
  -- TODO: https://github.com/neovim/neovim/issues/3988
  "editorconfig/editorconfig-vim";
  -- FIX: needs :lua require('telescope').extensions.neoclip.default()
  -- but too slow.
  -- Check if it is telescope or plugin thing
  "AckslD/nvim-neoclip.lua";
  "windwp/nvim-autopairs";
  -- "terrortylor/nvim-comment";
  "matbme/JABS.nvim";
  "jghauser/mkdir.nvim";
--   "yamatsum/nvim-cursorline";
  "edluffy/specs.nvim";
  "p00f/nvim-ts-rainbow";
--   "AckslD/nvim-revJ.lua";
--   "sgur/vim-textobj-parameter";
--   "kana/vim-textobj-user";
  -- "norcalli/nvim-colorizer.lua";
  {"rrethy/vim-hexokinase", run = 'make hexokinase'}; -- VimL
  "haringsrob/nvim_context_vt";

--   "notomo/gesture.nvim";

  "sheerun/vim-polyglot";

  -- git
  -- "sindrets/diffview.nvim"
  "lewis6991/gitsigns.nvim";
  "TimUntersberger/neogit";

  -- languages
  "mattn/emmet-vim"; -- VimL
  "b3nj5m1n/kommentary";
  "LnL7/vim-nix"; -- VimL

  -- lsp
  -- TODO: switch to https://github.com/hrsh7th/nvim-cmp
  "hrsh7th/nvim-compe";
  "neovim/nvim-lspconfig";
  "ray-x/lsp_signature.nvim";

  -- statusline
  "ojroques/nvim-hardline";
  "kyazdani42/nvim-web-devicons";

  -- telescope party
  "nvim-telescope/telescope.nvim";
  "nvim-telescope/telescope-fzy-native.nvim";

  -- zen mode
  "folke/twilight.nvim";
  "folke/zen-mode.nvim";

  -- tests
  -- "nacro90/numb.nvim";

  {"nvim-treesitter/nvim-treesitter", run=':TSUpdate'};  -- We recommend updating the parsers on update
  "nvim-treesitter/playground";
}

require('nvim-autopairs').setup();
require('gitsigns').setup();

require('telescope').setup();
require('telescope').load_extension('fzy_native');

