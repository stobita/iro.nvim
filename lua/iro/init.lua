local M = {}

M.config = {
	colors = {
		theme = "iro",
	},
}

function M.setup(config)
	M.config = config
end

function M.load()
	-- if vim.g.colors_name then
	-- 	vim.cmd("hi clear")
	-- end
	vim.api.nvim_echo({ { "Hello, World!", "Normal" } }, true, {})
	local colors = require("iro.colors").setup()
	local highlight = require("iro.highlights").setup(colors)
	vim.api.nvim_echo({ { "Hello, World?", "Normal" } }, true, {})
	vim.api.nvim_echo({ { colors, "Normal" } }, true, {})
	-- vim.api.nvim_exec_autocmds("ColorScheme", { modeline = false })
end

return M
