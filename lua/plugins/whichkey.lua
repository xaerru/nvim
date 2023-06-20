local M = {}

local default_wk = {
    normal = {
        t = {
            {
                name = "telescope",
                f = { "<CMD>Telescope find_files<CR>", "Find Files" },
                g = { "<CMD>Telescope git_files<CR>", "Git Files" },
                h = {
                    [[<CMD>lua require("telescope.builtin").find_files({search_dirs = {"~/oss", "~/play", "~/learn", "~/cp"}})<CR>]],
                    "Find Files Home",
                },
                o = { "<CMD>Telescope oldfiles<CR>", "Old files" },
                t = { "<CMD>Telescope<CR>", "Telescope" },
                r = { "<CMD>Telescope live_grep<CR>", "Search string" },
                w = { "<CMD>Telescope grep_string<CR>", "Search string under cursor" },
            },
        },

        g = {
            {
                name = "git",
                l = { "<CMD>lua require('terminal').lazygit()<CR>", "lazygit" },
                R = { "<cmd>lua require'gitsigns'.reset_buffer()<CR>", "Reset Buffer" },
                b = {"<cmd>lua require'gitsigns'.blame_line(full=true)<CR>","Blame Line"},
                p = {"<cmd>lua require'gitsigns'.preview_hunk()<CR>","Preview Hunk"},
                r = {"<cmd>lua require'gitsigns'.reset_hunk()<CR>","Reset Hunk"},
                s = {"<cmd>lua require'gitsigns'.stage_hunk()<CR>","Stage Hunk"},
                u = {"<cmd>lua require'gitsigns'.undo_stage_hunk()<CR>","Undo Stage Hunk"},
                ["n ]c"] = {
                    expr = true,
                    "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'",
                },
                ["n [c"] = {
                    expr = true,
                    "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'",
                },
                -- Text objects
            },
        },

        b = {
            {
                name = "buffer",
                c = { "<CMD>BufferLinePickClose<CR>", "Close buffer" },
                d = { "<CMD>silent %d<CR>", "Delete Buffer Content", silent = true },
                h = { "<CMD>BufferLineMovePrev<CR>", "Move Left" },
                l = { "<CMD>BufferLineMoveNext<CR>", "Move Right" },
                p = { "<CMD>BufferLinePick<CR>", "Pick buffer" },
                q = { "<CMD>bd<CR>", "Delete" },
                s = {
                    name = "Sort By",
                    d = { "<CMD>BufferLineSortByDirectory<CR>", "Directory" },
                    e = { "<CMD>BufferLineSortByExtension<CR>", "Extension" },
                    r = { "<CMD>BufferLineSortByRelativeDirectory<CR>", "Relative Directory" },
                },
                y = { "<CMD>silent %y<CR>", "Copy Buffer Content" },
            },
        },

        w = {
            {
                name = "windows",
                H = { "<C-W>5>", "expand-window-right" },
                J = { "<CMD>resize -5<CR>", "expand-window-up" },
                K = { "<CMD>resize +5<CR>", "expand-window-below" },
                L = { "<C-W>5<", "expand-window-left" },
                ["-"] = { "<C-W>s", "split-window-below" },
                ["2"] = { "<C-W>v", "layout-double-columns" },
                ["="] = { "<C-W>=", "balance-window" },
                ["|"] = { "<C-W>v", "split-window-right" },
                h = { "<C-W>h", "window-left" },
                j = { "<C-W>j", "window-below" },
                k = { "<C-W>k", "window-up" },
                l = { "<C-W>l", "window-right" },
                q = { "<C-W>c", "delete-window" },
                s = { "<C-W>s", "split-window-below" },
                v = { "<C-W>v", "split-window-below" },
                w = { "<C-W>w", "other-window" },
            },
        },

        s = {
            {
                name = "session",
                a = { "<CMD>:lua require('sessions').sload()<CR>", "Session Finder" },
                c = {
                    "<CMD>:lua require('persistence').load_current()<CR>",
                    "Restore Current Directory Session",
                },
                l = { "<CMD>:lua require('persistence').load_last()<CR>", "Load Last Session" },
            },
        },

        c = {
            {
                name = "commenter",
                A = "Append",
                [" "] = "Toggle",
                ["$"] = "To EOL",
                a = "Alt Delims",
                b = "Align Both",
                c = "Comment",
                i = "Invert",
                l = "Alight Left",
                m = "Minimal",
                n = "Nested",
                s = "Sexy",
                u = "Uncomment",
                y = "Yank",
            },
        },

        r = {
            {
                name = "run",
                f = { "<CMD>lua require('terminal').run_file()<CR>", "File" },
                r = { "<CMD>lua require('terminal').run_repl()<CR>", "REPL" },
                p = {
                    "<CMD>lua require('terminal').run_project()<CR>",
                    "Project",
                },
            },
        },
    },
    visual = {
        g = {
            {
                name = "git",
                r = {"<cmd>lua require'gitsigns'.reset_hunk({vim.fn.line('.'), vim.fn.line('v')})<CR>","Reset Hunk"},
                s = {"<cmd>lua require'gitsigns'.stage_hunk({vim.fn.line('.'), vim.fn.line('v')})<CR>","Stage Hunk"},
            },
        },
        c = {
            {
                name = "commenter",
                A = "Append",
                [" "] = "Toggle",
                ["$"] = "To EOL",
                a = "Alt Delims",
                b = "Align Both",
                c = "Comment",
                i = "Invert",
                l = "Alight Left",
                m = "Minimal",
                n = "Nested",
                s = "Sexy",
                u = "Uncomment",
                y = "Yank",
            },
        },
    },
    object = {
        i = {
            {
                name = "inside",
                h = {":<C-U>lua require'gitsigns.actions'.select_hunk()<CR>","Git Hunk", silent=true},
            },
            { mode = "o", prefix = "" },
        },
    },
    visual_block = {
        i = {
            {
                name = "inside",
                h = {":<C-U>lua require'gitsigns.actions'.select_hunk()<CR>","Git Hunk", silent = true},
            },
            { mode = "x", prefix = "" },
        },
    },
    {
        ["<leader><TAB>"] = { "<CMD>:BufferLineCyclePrev<CR>", "Previous Buffer" },
        ["<leader>n"] = { "<CMD>NvimTreeToggle<CR>", "Nvim Tree Toggle" },
        ["[c"] = "Previous Git Hunk",
        ["]c"] = "Next Git Hunk",
    },
}

local wk = require("which-key")

function M.register(binds, opts)
    for key, bind in pairs(binds) do
        wk.register({ [key] = bind[1] }, bind[2] or opts)
    end
end

-- TODO refactor this
function M.loader(keybinds)
    for mode, binds in pairs(keybinds) do
        if mode == "normal" then
            local opts = { prefix = "<leader>" }
            M.register(binds, opts)
        elseif mode == "visual" then
            local opts = { prefix = "<leader>", mode = "v" }
            M.register(binds, opts)
        elseif mode == "visual_block" then
            local opts = { prefix = "<leader>", mode = "x" }
            M.register(binds, opts)
        elseif mode == "insert" then
            local opts = { prefix = "<leader>", mode = "i" }
            M.register(binds, opts)
        elseif mode == "object" then
            local opts = { prefix = "<leader>", mode = "o" }
            M.register(binds, opts)
        else
            local opts = {}
            wk.register(binds, opts)
        end
    end
end

function M.load()
    M.loader(default_wk)
end

return M
