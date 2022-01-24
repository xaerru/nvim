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
        background = { guibg = "#383838", guifg = "#b8b8b8" },
        fill = { guibg = "#282828", guifg = "#D8DEE9" },
        separator = { guibg = "#383838", guifg = "#383838" },
        separator_selected = { guibg = "#282828", guifg = "#282828" },
        indicator_selected = { guibg = "#383838", guifg = "#383838" },
        modified = { guibg = "#383838" },
        diagnostic = { guibg = "#383838", guifg = "#7cafc2" },
        warning = { guibg = "#383838", guifg="#b8b8b8" },
        warning_diagnostic = { guibg = "#383838", guifg = "#f7ca88" },
        warning_diagnostic_selected = { guifg = "#f7ca88" },
        error = { guibg = "#383838", guifg="#b8b8b8" },
        error_diagnostic = { guibg = "#383838", guifg = "#ab4642" },
        info = { guibg = "#383838", guifg="#b8b8b8" },
        info_diagnostic = { guibg = "#383838", guifg = "#7cafc2" },
        hint = { guibg = "#383838", guifg="#b8b8b8" },
        hint_diagnostic = { guibg = "#383838", guifg = "#ba8baf" }
    },
}

M.load = function()
    require("bufferline").setup(config)
end

return M
