local M = {}

function M.setup()
	local highlight = {}
	return highlight
end

function M.highlight(highlights)
	for h, s in pairs(highlights) do
		vim.api.nvim_set_hl(ns, h, s)
	end
end

function M.load()
	vim.g.colors_name = "iro"
	vim.o.termguicolors = true
end

return M
