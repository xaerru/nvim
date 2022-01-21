-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'Pocco81/AutoSave.nvim'
  use 'windwp/nvim-autopairs'
  use 'akinsho/bufferline.nvim'
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'RRethy/nvim-base16'
  use { 'tjdevries/express_line.nvim', requires = {'lewis6991/gitsigns.nvim'} }
  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'
  use 'folke/which-key.nvim'
  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'
end)

vim.cmd [[ colorscheme base16-default-dark ]]
local options = require("options")
options.load()
require('plugins.treesitter').load()
require('statusline')
require('plugins.bufferline').load()
require('keybinds').load()
require('plugins.whichkey').load()
require('plugins.gitsigns').load()
require('plugins.telescope').load()
require('plugins.autopairs').load()
require('autosave').setup({
  execution_message=''
})
-- vim: ts=2 sts=2 sw=2 et
