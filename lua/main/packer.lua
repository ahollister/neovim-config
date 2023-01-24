--s This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-tree.lua'

  -- Get use declarations from WIP plugins list
  --require('main.WIP.plugins').use_wip_plugins(use)
  use 'ahollister/telescopenotes.nvim'

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
  -- -- use 'pineapplegiant/spaceduck'
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
  use { 'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup({
        autostart = true,
        cursor = "▷", -- cursor shape (need nerd font)
        texthl = "SmoothCursor", -- highlight group, default is { bg = nil, fg = "#FFD400" }
        linehl = nil, -- highlight sub-cursor line like 'cursorline', "CursorLine" recommended
        type = "default", -- define cursor movement calculate function, "default" or "exp" (exponential).
        fancy = {
          enable = true, -- enable fancy mode
          head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil },
          body = {
            { cursor = "●", texthl = "SmoothCursorRed" },
            { cursor = "●", texthl = "SmoothCursorOrange" },
            { cursor = "●", texthl = "SmoothCursorYellow" },
            { cursor = "●", texthl = "SmoothCursorGreen" },
            { cursor = "●", texthl = "SmoothCursorAqua" },
            { cursor = "●", texthl = "SmoothCursorBlue" },
            { cursor = "●", texthl = "SmoothCursorPurple" },
          },
          tail = { cursor = nil, texthl = "SmoothCursor" }
        },
        speed = 25, -- max is 100 to stick to your current position
        intervals = 35, -- tick interval
        priority = 10, -- set marker priority
        timeout = 3000, -- timout for animation
        threshold = 3, -- animate if threshold lines jump
        disabled_filetypes = nil, -- this option will be skipped if enabled_filetypes is set. example: {
      })
    end
  }
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
  use({
    'terror/chatgpt.nvim',
    run = 'pip3 install -r requirements.txt'
  })
end)
