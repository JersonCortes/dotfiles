return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
      auto_install = true,
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css", "c", "rust"
  		},
  	},
  },

  {
      "kawre/leetcode.nvim",
      cmd = 'Leet',
      build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
      dependencies = {
          "nvim-telescope/telescope.nvim",
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
      },
      opts = {
          -- configuration goes here
      },
      config = function()
        require "configs.leetcode"
      end,
  },

  {
    'jedrzejboczar/devcontainers.nvim',
    dependencies = {
      'nvim-lspconfig', -- for configuration using on_new_config hook
      'miversen33/netman.nvim', -- optional to browse files in docker container
    },
    opts = {},
  },
}
