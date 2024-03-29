
-- local filename_with_icon_as_extension = require('utils').build_filename_with_icon_as_extension()

require('hardline').setup {
    bufferline = false,  -- enable bufferline
    theme = 'default',   -- change theme
    sections = {         -- define sections
      {class = 'mode', item = require('hardline.parts.mode').get_item},
      {class = 'med', item = require('hardline.parts.filename').get_item},
--       {class = 'med', item = filename_with_icon_as_extension},
      {class = 'error', item = require('hardline.parts.lsp').get_error},
      {class = 'warning', item = require('hardline.parts.lsp').get_warning},
      {class = 'warning', item = require('hardline.parts.whitespace').get_item},
      '%<',
      {class = 'med', item ='%='},
      --   {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 80},
      {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 80},
      {class = 'high', item = require('hardline.parts.git').get_item, hide = 80},
      {class = 'mode', item = require('hardline.parts.line').get_item},
    },
    bufferline_settings = {
      exclude_terminal = false,  -- don't show terminal buffers in bufferline
      show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
    },
  }
