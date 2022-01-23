local M = {}

local config = {
    position = "bottom",
    icons = false,
    mode = "workspace_diagnostics",
    signs = {
        error = "E",
        warning = "W",
        hint = "H",
        information = "I",
        other = "O",
    },
}

M.load = function()
    require("trouble").setup(config)
end

return M
