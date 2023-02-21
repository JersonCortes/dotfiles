require('settings')
require('packer-config')
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('theme.theme')
require("nvim-tree").setup({
   open_on_setup = true,
   view = {
   	hide_root_folder = true
   }
})


require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

--require('git').setup()

require('toggleterm').setup{
	open_mapping = [[<c-\>]],
	direction = 'tab'
}
--Theme
require('base16-colorscheme').setup({
    base00 = '#151515', base01 = '#151515', base02 = '#2E2E2E', base03 = '#424242',
    base04 = '#BBB6B6', base05 = '#E8E3E3', base06 = '#E8E3E3', base07 = '#E8E3E3',
    base08 = '#B66467', base09 = '#D9BC8C', base0A = '#D9BC8C', base0B = '#8C977D',
    base0C = '#8AA6A2', base0D = '#8DA3B9', base0E = '#A988B0', base0F = '#424242',
})

--Highlight colors
require('colorizer').setup()

require('lspconfig').clangd.setup{}
