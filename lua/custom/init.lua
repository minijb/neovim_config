local M = {}

local snippets = require("custom.snippets")

function M.setup()
  snippets.setup()
  require("custom.config")
end

return M
