return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", enabled = false },
  {
    "monsonjeremy/onedark.nvim",
    enabled = false,
  },
  { "rose-pine/neovim", enabled = false },
  {
    "tiagovla/tokyodark.nvim",
    enabled = false,
    opts = {
      -- custom options here
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
  { "folke/tokyonight.nvim", enabled = false },
  { "whatyouhide/vim-gotham", enabled = false },
  { "bluz71/vim-nightfly-colors", enabled = false },
  { "rebelot/kanagawa.nvim", enabled = false },
  { "marko-cerovac/material.nvim", enabled = false },
  -- zenwritten neobones vimbones rosebones forestbones
  -- nordbones tokyobones seoulbones duckbones zenburned
  -- kanagawabones randombones
  { "mcchrish/zenbones.nvim", enabled = true },
  { "shaunsingh/nord.nvim", enabled = false },
  { "cocopon/iceberg.vim", enabled = false },
  -- https://github.com/mcchrish/vim-no-color-collections
  { "andreasvc/vim-256noir", enabled = false },
  { "huyvohcmc/atlas.vim", enabled = true },
  { "ntk148v/komau.vim", enabled = false },
  { "davidosomething/vim-colors-meh", enabled = false },
  { "jaredgorski/fogbell.vim", enabled = false },
  { "axvr/photon.vim", enabled = false },
  { "stefanvanburen/rams.vim", enabled = false },
  { "ryanpcmcquen/true-monochrome_vim", enabled = false },
  { "projekt0n/github-nvim-theme", enabled = false },
  { "embark-theme/vim", enabled = false },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- gotham256 kanagawa-dragon
      -- 256_noir atlas komau meh antiphoton rams true-monochrome github_dark_high_contrast
      -- Best: atlas embark kanagawa kanagawabones komau meh
      colorscheme = "zenbones",
    },
  },
}
