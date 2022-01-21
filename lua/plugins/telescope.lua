local M = {}

local config = {
    defaults = {
        winblend = 8,
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
      }
    }
}

M.load = function()
    require('telescope').setup(config)
    require('telescope').load_extension('fzf')
end

return M
