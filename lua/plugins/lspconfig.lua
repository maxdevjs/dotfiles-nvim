return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {
        settings = {
          -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#cssls
          -- https://www.reddit.com/r/lunarvim/comments/w50jfk/comment/jcl262v/
          css = {
            validate = true,
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      },
    },
  },
}
