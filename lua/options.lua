local M = {}

local default_settings = {
    autoindent = true,
    autoread = true,
    backspace = { "indent", "eol", "start" },
    clipboard = "unnamedplus",
    cmdheight = 2,
    completeopt = "menuone,noselect",
    conceallevel = 0,
    encoding = "utf-8",
    expandtab = true,
    fileencoding = "utf-8",
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    inccommand = "nosplit",
    laststatus = 3,
    lazyredraw = true,
    linebreak = true,
    mouse = "a",
    number = true,
    pumheight = 10,
    ruler = true,
    scrolloff = 8,
    sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,globals",
    shiftwidth = 4,
    shortmess = vim.opt.shortmess:append("c"),
    showmode = false,
    showtabline = 2,
    sidescrolloff = 8,
    signcolumn = "yes",
    smartcase = true,
    smartindent = true,
    smarttab = true,
    splitbelow = true,
    splitright = true,
    tabstop = 8,
    termguicolors = true,
    timeoutlen = 150,
    undodir = os.getenv("HOME") .. "/.cache/nvim/undo",
    undofile = true,
    undolevels = 1000,
    undoreload = 10000,
    updatetime = 0,
    wrap = false,
}

function M.define(settings)
    for option, value in pairs(settings) do
        vim.opt[option] = value
    end
end

function M.load()
    M.define(default_settings)
end

return M
