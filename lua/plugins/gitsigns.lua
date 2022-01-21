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
    keymaps = {
        noremap = true,
        ["n ]c"] = {
            expr = true,
            "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'",
        },
        ["n [c"] = {
            expr = true,
            "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'",
        },
        ["n <leader>gs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
        ["v <leader>gs"] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
        ["n <leader>gu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
        ["n <leader>gr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
        ["v <leader>gr"] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
        ["n <leader>gR"] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
        ["n <leader>gp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
        ["n <leader>gb"] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
        -- Text objects
        ["o ih"] = { silent = true, ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>' },
        ["x ih"] = { silent = true, ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>' },
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
