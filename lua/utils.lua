local utils = {}

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- http://keplerproject.github.io/luadoc/manual.html#introduction
--- Create new current file name (i.e: to be shwon in statusline).
--
-- @usage something like require('utils').build_filename_with_icon_as_extension()
-- Dependencies:
-- https://github.com/kyazdani42/nvim-web-devicons
--
-- If the original file name has an extension
--
-- @return the file name with the original extension substituted
-- by the correspondent nvim-web-devicons icon. Example:
-- init.lua -> init.
--
-- If the file has not extension
-- @return the original file name
function utils.build_filename_with_icon_as_extension()
  local file_currently_opened = require('hardline.parts.filename').get_item() -- name + extension

  -- local filename = file_currently_opened:match("[^/]+$") -- name + extension

  -- Does the file have an extension: a '.' (dot) near the end of the file name
  -- with trailing characters:
  local file_has_extension = file_currently_opened:match("(.+)%..+")

  if (file_has_extension ~= nil)
  then
    local extension = file_currently_opened:match("[^.]+$")
    local filename_without_extension = file_currently_opened:sub(1, string.find(file_currently_opened, extension) - 1)
    local icon = require'nvim-web-devicons'.get_icon(file_currently_opened, extension)

    return filename_without_extension .. icon
  else
    return file_currently_opened
  end
end

return utils
