local use = require("packer").use
require("packer").startup(function()
    use({ "wbthomason/packer.nvim" }) -- Package manager
    use({ "numToStr/Comment.nvim" }) -- "gc" to comment visual regions/lines
    use({ "Pocco81/AutoSave.nvim" })
    use({ "windwp/nvim-autopairs" })
    use({ "akinsho/bufferline.nvim" })
    use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use({ "RRethy/nvim-base16" })
    use({ "tjdevries/express_line.nvim", requires = { "lewis6991/gitsigns.nvim" } })
    -- Add indentation guides even on blank lines
    use({ "lukas-reineke/indent-blankline.nvim" })
    use({ "folke/which-key.nvim" })
    -- Add git related info in the signs columns and popups
    use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use({ "nvim-treesitter/nvim-treesitter" })
    -- Additional textobjects for treesitter
    use({ "nvim-treesitter/nvim-treesitter-textobjects" })
end)
