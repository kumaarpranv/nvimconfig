-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/dracula.nvim'
end)
