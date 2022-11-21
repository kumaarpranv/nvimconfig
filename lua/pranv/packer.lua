-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use 'wbthomason/packer.nvim'
  -- lsp
  use 'neovim/nvim-lspconfig'
  -- color themes
  use 'gruvbox-community/gruvbox'
  use 'Mofiqul/dracula.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  --utils
  use 'TimUntersberger/neogit'
end)
