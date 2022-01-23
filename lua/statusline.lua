local generator = function()
    local builtin = require("el.builtin")
    local sections = require("el.sections")
    local extensions = require("el.extensions")
    local subscribe = require("el.subscribe")
    local segments = {
        extensions.mode,
        " ",
        extensions.git_branch,
        " ",
        { builtin.file_relative },
        { sections.split },
        {
            subscribe.buf_autocmd("el_git_changes", "BufWritePost", function(window, buffer)
                return extensions.git_changes(window, buffer)
            end),
        },
        { "[" },
        { builtin.line_with_width(3) },
        { ":" },
        { builtin.column_with_width(2) },
        { "]" },
        {
            sections.collapse_builtin({
                "[",
                builtin.help_list,
                builtin.readonly_list,
                "]",
            }),
        },
        { builtin.filetype },
    }
    return segments
end

-- And then when you're all done, just call
require("el").setup({ generator = generator })
