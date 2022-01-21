local M = {}

local config = {
    check_ts = true,
    fast_wrap = {
        map = "<C-f>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        hightlight = "Search",
    },
}

M.load = function()
    require("nvim-autopairs").setup(config)
end

return M
