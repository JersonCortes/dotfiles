return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "jedrzejboczar/devcontainers.nvim",
    dependencies = {
      "miversen33/netman.nvim", -- optional to browse files in docker container
      "stevearc/overseer.nvim", -- see progress and notificacions
    },
    opts = {
      log = { level = "trace" },
    },
  },

  {
    "kawre/leetcode.nvim",
    cmd = "Leet",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require "configs.leetcode"
    end,
  },
}
