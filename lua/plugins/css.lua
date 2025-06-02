-- https://github.com/brenoprata10/nvim-highlight-colors
return {
  "brenoprata10/nvim-highlight-colors",
  config = function()
    require("nvim-highlight-colors").setup({
      ---Render style
      ---@usage 'background'|'foreground'|'virtual'
      render = "virtual",
      enable_tailwind = true,
    })
  end,
}
