local M = {}

local config = {
    signs = {
        add = {
            hl = "GitSignsAdd",
            text = "▎",
            numhl = "GitSignsAddNr",
            linehl = "GitSignsAddLn",
        },
        change = { hl = "GitSignsChange", text = "▎", linehl = "GitSignsChangeLn" },
        delete = { hl = "GitSignsDelete", text = "契", linehl = "GitSignsDeleteLn" },
        topdelete = { hl = "GitSignsDelete", text = "契", linehl = "GitSignsDeleteLn" },
        changedelete = { hl = "GitSignsChange", text = "▎", linehl = "GitSignsChangeLn" },
    },
    preview_config = {
        border = "single",
        style = "minimal",
        relative = "cursor",
    },
}

M.load = function()
    require("gitsigns").setup(config)
end

return M
