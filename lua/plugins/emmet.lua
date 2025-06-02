-- https://github.com/aca/emmet-ls

-- https://stackoverflow.com/questions/76597311/how-to-enable-emmet-for-ejs-file-in-lazy-nvim

return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        emmet_ls = {
          filetypes = {
            "astro",
            "css",
            "ejs",
            "html",
            "less",
            "javascript",
            "javascriptreact",
            "markdown",
            "sass",
            "scss",
            "typescript",
            "typescriptreact",
          },
          init_options = {
            html = {
              options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L26
                -- https://github.com/aca/emmet-ls
                ["bem.enabled"] = true,
              },
            },
          },
        },
      },
    },
  },
}
