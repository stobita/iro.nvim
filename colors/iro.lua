vim.g.colors_name = "iro"

local colors = {
	white1 = "#ffffff",
	black1 = "#0b0e0e",
	red = "#ff0000",
	green = "#00ff00",
	blue = "#0000ff",
	blue1 = "#537178",
	black = "#000000",
}

local highlight_groups = {
	Normal = { foreground = colors.white1, background = colors.black1 },
	Comment = { foreground = colors.blue1 },
}

for group, props in pairs(highlight_groups) do
	vim.api.nvim_set_hl(0, group, props)
end
