local M = {}

local config = {
    options = {
        numbers = function(a)
            return a.raise(a.ordinal)
        end,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count)
            return "(" .. count .. ")"
        end,
        offsets = { { filetype = "NvimTree", text_align = "left" } },
        show_buffer_close_icons = false,
        show_close_icon = false,
    },
    highlights = {
        background = { bg = "#282828", fg = "#b8b8b8" },
        fill = { bg = "#383838", fg = "#D8DEE9" },
        separator = { bg = "#282828", fg = "#282828" },
        separator_selected = { bg = "#383838", fg = "#383838" },
        indicator_selected = { bg = "#282828", fg = "#282828" },
        numbers = { bg = "#282828", fg = "#b8b8b8" },
        modified = { bg = "#282828" },
        diagnostic = { bg = "#282828", fg = "#7cafc2" },
        warning = { bg = "#282828", fg = "#b8b8b8" },
        warning_diagnostic = { bg = "#282828", fg = "#f7ca88" },
        warning_diagnostic_selected = { fg = "#f7ca88" },
        error = { bg = "#282828", fg = "#b8b8b8" },
        error_diagnostic = { bg = "#282828", fg = "#ab4642" },
        info = { bg = "#282828", fg = "#b8b8b8" },
        info_diagnostic = { bg = "#282828", fg = "#7cafc2" },
        hint = { bg = "#282828", fg = "#b8b8b8" },
        hint_diagnostic = { bg = "#282828", fg = "#ba8baf" },
    },
}

M.load = function()
    require("bufferline").setup(config)
end

return M
