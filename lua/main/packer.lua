--s This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- LSP stuff
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'lukas-reineke/lsp-format.nvim' -- formatting
  use 'j-hui/fidget.nvim' -- Display LSP status
  use 'jose-elias-alvarez/null-ls.nvim' -- Inject some diagnostics and handle some prettier autoformatting

  -- Other
  use 'github/copilot.vim'
  use 'PeterRincker/vim-searchlight'
  use 'folke/tokyonight.nvim'
  use 'npxbr/gruvbox.nvim'
  -- use 'pineapplegiant/spaceduck'
  use 'ahollister/spacebun'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'tpope/vim-sleuth'
  use 'norcalli/nvim-colorizer.lua'
  use 'tpope/vim-surround'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'psliwka/vim-smoothie'
  use "numToStr/FTerm.nvim"
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      -- you'll need at least one of these
      { 'nvim-telescope/telescope.nvim' },
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
    end,
  }
  use 'ThePrimeagen/harpoon'
  use 'tpope/vim-commentary'
  use 'airblade/vim-gitgutter'
  use 'xiyaowong/nvim-transparent'
end)
