-- This file can be loaded bu calling `lua require('plugins)` from you init.vim

-- Only required if you hav packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
  --Packer can manage itself
  use "wbthomason/packer.nvim"
  use "folke/tokyonight.nvim"
  use {'neoclide/coc.nvim', branch = 'release'}
end)
