local M = {}

local cmp = require("cmp")

local config = {
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ["<Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif require("luasnip").expand_or_jumpable() then
                vim.fn.feedkeys(
                    vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
                    ""
                )
            else
                fallback()
            end
        end,
        ["<S-Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif require("luasnip").jumpable(-1) then
                vim.fn.feedkeys(
                    vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true),
                    ""
                )
            else
                fallback()
            end
        end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "rg" },
        { name = "calc" },
        { name = "fuzzy_path" },
        {
            name = "tmux",
            option = {
                all_panes = true,
            },
        },
    },
}
cmp.setup.cmdline(':', {
  sources = {
    { name = 'cmdline' },
    { name = 'fuzzy_path' }
  }
})
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})
M.load = function()
    cmp.setup(config)
end

return M
