-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim' 
    use 'npxbr/gruvbox.nvim'
    use 'pineapplegiant/spaceduck'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'tpope/vim-sleuth'
    use 'tpope/vim-surround'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'mattn/emmet-vim'
end)
