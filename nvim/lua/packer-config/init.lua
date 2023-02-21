return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'
  -- Autocompletion by Nvim
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Nvim tree
  use {
  	'kyazdani42/nvim-tree.lua',
	requires = {
		'kyazdani42/nvim-web-devicons', -- optional, for file icons
  	}
  }
  
  --Auto pairs
  use {
	"windwp/nvim-autopairs",
	config = function() require("nvim-autopairs").setup {} end
  } 

  -- Tree Sitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  -- Telescope
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.0',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Lua Line
  use {
  	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  
  -- Git
  --use {
  --      'dinhhuy258/git.nvim'
  --}

  -- Multiple terminals in nvim
  use {
	  'akinsho/toggleterm.nvim', tag = '*', config = function()
  end}

  use{
	  'RRethy/nvim-base16'
  }  
  use{
	  'norcalli/nvim-colorizer.lua'
  }
end)
