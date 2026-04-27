--[[
return {
	"rose-pine/neovim",
	as = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
]]
--

--[[
return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd("colorscheme tokyonight")
	end,
}
]]
--

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme catppuccin-latte")
	end,
}
