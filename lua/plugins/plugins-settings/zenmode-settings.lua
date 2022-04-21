require("zen-mode").setup {
  window = {
    width = .75,
    backdrop = 0.195, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
  },
  plugins = {
    options = {
      enabled = true,
      -- signcolumn = "no", -- disable signcolumn
      -- number = false, -- disable number column
      ruler = true, -- disables the ruler text in the cmd line area
      showcmd = true, -- disables the command in the last line of the screen
    },
    twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
    kitty = {
      -- TODO: does not work
      enabled = true,
      font = "+4", -- font size increment
    },
  },
}
