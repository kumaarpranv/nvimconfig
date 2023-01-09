-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have acker configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- optimizations
  use 'lewis6991/impatient.nvim'

  --utils
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  use 'numToStr/Comment.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use({
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
    config = function()
    end
  })
  use { "windwp/nvim-autopairs" }

  -- lsp
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use { 'stevearc/aerial.nvim' }
  use 'nvim-treesitter/playground'
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'jose-elias-alvarez/null-ls.nvim' },
      { 'jay-babu/mason-null-ls.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- dap
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python'
  use 'leoluz/nvim-dap-go'
  use 'rcarriga/nvim-dap-ui'

  -- color themes
  use 'gruvbox-community/gruvbox'
  use 'Mofiqul/dracula.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- explorer
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- icons
  use 'nvim-tree/nvim-web-devicons'

  -- statusline
  use 'nvim-lualine/lualine.nvim'

  -- fuzzy finding w/ telescope
  use 'nvim-telescope/telescope.nvim' -- fuzzy finder
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  -- toggleterm
  use { 'akinsho/toggleterm.nvim', tag = '*' }

  -- git
  use { 'lewis6991/gitsigns.nvim' }
  use { 'tpope/vim-fugitive' }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- motions
  use { 'ggandor/leap.nvim' }
end)
