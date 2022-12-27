-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have acker configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  --utils
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'

  -- lsp
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/playground'
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'jose-elias-alvarez/null-ls.nvim'},
        {'jay-babu/mason-null-ls.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    }
  }
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- code completion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- color themes
  use 'gruvbox-community/gruvbox'
  use 'Mofiqul/dracula.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- explorer
  use 'nvim-tree/nvim-tree.lua'

  -- icons
  use 'nvim-tree/nvim-web-devicons'

  -- statusline
  use 'nvim-lualine/lualine.nvim'

  -- fuzzy finding w/ telescope
  use 'nvim-telescope/telescope.nvim' -- fuzzy finder
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  -- toggleterm
  use { 'akinsho/toggleterm.nvim', tag = '*' }

  -- git
  use { 'lewis6991/gitsigns.nvim' }
  use { 'tpope/vim-fugitive' }

  -- motions
  use { 'justinmk/vim-sneak' }
end)
