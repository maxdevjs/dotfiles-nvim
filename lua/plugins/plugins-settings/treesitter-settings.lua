require'nvim-treesitter.configs'.setup {
    -- https://github.com/nvim-treesitter/nvim-treesitter/issues/2887#issuecomment-1126787909
    -- https://github.com/nvim-treesitter/nvim-treesitter/issues/2886#issuecomment-1120015543
    -- https://github.com/ogirginc/dotfiles/commit/3c85abd07227f9bab4398809668784e1aa03e1b1
    -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    
    -- https://tree-sitter.github.io/tree-sitter/creating-parsers#installation
    -- https://crates.io/crates/tree-sitter-cli
    -- $ npm install -g tree-sitter-cli -- ex.: for gitignore
    
    -- https://github.com/nvim-treesitter/nvim-treesitter
    ensure_installed = {'bash', 'comment', 'css',  'fish', 'gitignore', 'html', 'http', 'javascript', 'jsdoc', 'json', 'lua', 'markdown', 'nix', 'prisma', 'python', 'regex', 'ruby', 'rust', 'scss', 'sql', 'svelte', 'sxhkdrc', 'tsx', 'typescript', 'vue', 'yaml'},
    --ignore_install = { "javascript" }, -- List of parsers to ignore installing
    highlight = {
      enable = true,              -- false will disable the whole extension
      disable = { "c", "rust" },  -- list of language that will be disabled
    },
  }
