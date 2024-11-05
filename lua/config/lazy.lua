local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- { import = "plugins" },
    -- import any extras modules here
    -- dap
    { import = "lazyvim.plugins.extras.dap.core" }, -- https://www.lazyvim.org/extras/dap/core
    -- { import = "lazyvim.plugins.extras.dap.nlua" }, -- https://www.lazyvim.org/extras/dap/nlua
    -- lang
    -- https://clangd.llvm.org/config.html
    { import = "lazyvim.plugins.extras.lang.clangd" }, -- https://www.lazyvim.org/extras/lang/clangd
    { import = "lazyvim.plugins.extras.lang.docker" }, -- https://www.lazyvim.org/extras/lang/docker
    { import = "lazyvim.plugins.extras.lang.go" }, -- https://www.lazyvim.org/extras/lang/go
    -- { import = "lazyvim.plugins.extras.lang.json" }, -- https://www.lazyvim.org/extras/lang/json
    -- { import = "lazyvim.plugins.extras.lang.markdown" }, -- https://www.lazyvim.org/extras/lang/markdown
    -- { import = "lazyvim.plugins.extras.lang.nix" }, -- https://www.lazyvim.org/extras/lang/nix
    -- { import = "lazyvim.plugins.extras.lang.python" }, -- https://www.lazyvim.org/extras/lang/python
    -- { import = "lazyvim.plugins.extras.lang.typescript" }, -- https://www.lazyvim.org/extras/lang/typescript
    -- { import = "lazyvim.plugins.extras.lang.yaml" }, -- https://www.lazyvim.org/extras/lang/yaml
    -- ui
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    { import = "lazyvim.plugins.extras.ui.treesitter-context" }, -- https://www.lazyvim.org/extras/ui/treesitter-context
    -- util
    { import = "lazyvim.plugins.extras.util.gitui" }, -- https://www.lazyvim.org/extras/util/gitui
    -- { import = "lazyvim.plugins.extras.util.project" }, -- https://www.lazyvim.org/extras/util/project
    -- CHECK https://github.com/coffebar/neovim-project
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
