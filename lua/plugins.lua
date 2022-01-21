local use = require("packer").use
require("packer").startup(function()
    use({ "wbthomason/packer.nvim" }) -- Package manager
    use({ "numToStr/Comment.nvim" }) -- "gc" to comment visual regions/lines
    use({ "nvim-lua/plenary.nvim" })
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
    use({
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        module = 'telescope.finders',
        requires = { 
            {
                "nvim-telescope/telescope-fzf-native.nvim", run = "make"
            }
        },
        config = function()
            require('plugins.telescope')
        end
    })
    use({
        "RRethy/nvim-base16",
        event = "VimEnter",
        config = function()
            vim.cmd([[ colorscheme base16-default-dark ]])
        end
    })
    use({
        "tjdevries/express_line.nvim",
        requires = { "lewis6991/gitsigns.nvim" },
        after = "nvim-base16",
        config = function()
            require('statusline')
        end
    })
    use({
        "akinsho/bufferline.nvim",
        after = "express_line.nvim",
        config = function()
            require('plugins.bufferline').load()
        end
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        after = 'plenary.nvim',
        config = function()
            require('plugins.treesitter').load()
        end
    })
    use({ "nvim-treesitter/nvim-treesitter-textobjects" })
    use({
        "folke/which-key.nvim",
        after = "bufferline.nvim",
        config = function()
            require('plugins.whichkey').load()
        end
    })
    use({
        "lewis6991/gitsigns.nvim",
        after = "plenary.nvim",
        config = function()
            require('plugins.gitsigns').load()
        end
    })
    use({
        "lukas-reineke/indent-blankline.nvim",
        after = "nvim-base16"
    })
end)
