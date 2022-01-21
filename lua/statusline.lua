local generator = function()
    local extensions = require('el.extensions')
    local subscribe = require('el.subscribe')
    local segments = {
        extensions.mode,
    }
    return segments
end

-- And then when you're all done, just call
require('el').setup { generator = generator }
