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
}

M.load = function()
    require("bufferline").setup(config)
end

return M
