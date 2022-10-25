-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'PeterRincker/vim-searchlight'
  use 'folke/tokyonight.nvim' 
  use 'npxbr/gruvbox.nvim'
  -- use 'pineapplegiant/spaceduck'
  use 'ahollister/spacebun'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'tpope/vim-sleuth'
  use 'norcalli/nvim-colorizer.lua'
  use 'tpope/vim-surround'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'mattn/emmet-vim'
  use 'windwp/nvim-ts-autotag'
  use 'psliwka/vim-smoothie'
  use "numToStr/FTerm.nvim"
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      -- you'll need at least one of these
      {'nvim-telescope/telescope.nvim'},
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
    end,
  }
  use 'ThePrimeagen/harpoon'
  use 'stevearc/aerial.nvim'
  use 'fannheyward/telescope-coc.nvim'
  use 'tpope/vim-commentary'
  use 'github/copilot.vim'
  use 'airblade/vim-gitgutter'
end)
