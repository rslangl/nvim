-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Colorscheme
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  }

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    event = 'BufEnter',
    requires = { { 'nvim-web-devicons' } }
  }

  -- Syntax highlighter
  use {
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  }

  -- File picker/switcher
  use {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Terminal
  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
  }

  -- Git tree
  use 'mbbill/undotree'

  -- Git
  use 'tpope/vim-fugitive'

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
	
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      {
        'L3MON4D3/LuaSnip',
        tag = 'v<CurrentMajor>.*',
        run = "make install_jsregexp"
      },
      { 'rafamadriz/friendly-snippets' },
    }
  }

end)
