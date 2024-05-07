return{
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function ()
			require("mason").setup()
		end,
	},
	--Autocompletition
	{
		'neovim/nvim-lspconfig',
		config = function()
			require("plugins.config.lsp")
			require("plugins.config.lsp_servers")
		end,
	},{
		'hrsh7th/nvim-cmp',
		event = "InsertEnter",
		dependencies = {
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		},
		--Configuration
		config = function()
			require("plugins.config.cmp")
		end,
	},
	--Parser
	{
		'nvim-treesitter/nvim-treesitter',
	},
	--Utilities
	{
		'kyazdani42/nvim-tree.lua',
		version = "*",
		lazy = false,
		dependencies = {
			'kyazdani42/nvim-web-devicons'
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	},{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}
	},{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		},
		config = function ()
			require("plugins.config.lualine")
		end
	},{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = function()
			require("plugins.config.toggleterm")
		end
	},
	-- Visuals
	{
		'RRethy/nvim-base16'
	}
}
