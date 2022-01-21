local M = {}

local config = {
    hijack_cursor = true,
    update_cwd = true,
    update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = { ".git", "node_modules", ".cache", "target" },
    },
    view = {
        width = 25,
    },
}

M.load = function()
    require("nvim-tree").setup(config)
end

return M
