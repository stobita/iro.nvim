local M = {}

M.config = {}

function M.setup(config)
	M.config = config
end

function M.load()
	local colors = require("iro.colors").setup()
	local highlight = require("iro.highlight").setup(colors)
end

return M
