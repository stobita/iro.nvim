-- mytheme.lua
vim.g.colors_name = "mytheme"

-- 背景がダークモードの場合
vim.opt.background = "dark"

-- ここに色の定義を追加します。
local colors = {
	red = "#ff0000",
	green = "#00ff00",
	blue = "#0000ff",
	black = "#000000",
	-- その他の色...
}

-- ここでハイライトグループを定義します。
local highlight_groups = {
	Normal = { fg = colors.red, bg = colors.black },
	Comment = { fg = colors.green },
	-- その他のハイライト...
}

-- ハイライトグループの色を適用します。
for group, colors in pairs(highlight_groups) do
	local style = "NONE"
	local fg = colors.fg or "NONE"
	local bg = colors.bg or "NONE"
	vim.api.nvim_command("highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. style)
end
