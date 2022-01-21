local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end
require("plugins")

vim.cmd([[ colorscheme base16-default-dark ]])
local options = require("options")
options.load()
require("plugins.treesitter").load()
require("statusline")
require("plugins.bufferline").load()
require("keybinds").load()
require("plugins.whichkey").load()
require("plugins.gitsigns").load()
