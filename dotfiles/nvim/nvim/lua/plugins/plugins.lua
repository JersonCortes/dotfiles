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
	},
	{
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
	},{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function ()
			require("plugins.config.telescope")
		end
	},
	-- Visuals
	{
		'RRethy/nvim-base16'
	},
	--Own plugin
	{
		'JersonCortes/telescope-podman',
		event = 'VeryLazy',
		dependencies = {
			'nvim-telescope/telescope.nvim',
		},
		config = function()
			require('telescope').load_extension('telescope_podman')
		end,

		--Keybinds
		keys = {
			{
				'<Leader>ci',
				':Telescope telescope_podman show_images<CR>',
			},
			{
				'<Leader>cp',
				':Telescope telescope_podman show_containers<CR>',
			},
		},
	}
}
