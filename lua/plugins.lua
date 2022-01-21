local use = require("packer").use
require("packer").startup(function()
    use({ "wbthomason/packer.nvim" }) -- Package manager
    use({ "numToStr/Comment.nvim" }) -- "gc" to comment visual regions/lines
    use({
        "Pocco81/AutoSave.nvim",
        config = function()
            require("autosave").setup({
                execution_message = "",
            })
        end
    })
    use({
        "windwp/nvim-autopairs",
        event = 'InsertEnter',
        config = function()
            require('plugins.autopairs').load()
        end
    })
    use({ "akinsho/bufferline.nvim" })
    use({
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        module = 'telescope.finders',
        requires = { 
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim", run = "make"
            }
        },
        config = function()
            require('plugins.telescope')
        end
    })
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
