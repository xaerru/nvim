local M = {}

local config = {
    size = 5,
    open_mapping = [[<F1>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = "1",
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = "single",
        width = 150,
        height = 35,
        winblend = 8,
        highlights = {
            border = "FloatBorder",
            background = "Normal",
        },
    },
}

M.load = function()
    require('toggleterm').setup(config)
end

return M
