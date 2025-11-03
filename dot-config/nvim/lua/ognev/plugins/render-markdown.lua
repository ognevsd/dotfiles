return {
	"MeanderingProgrammer/render-markdown.nvim",
	version = "8.9.0",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		latex = {
			-- Turn on / off latex rendering.
			enabled = true,
			-- Additional modes to render latex.
			render_modes = false,
			-- Executable used to convert latex formula to rendered unicode.
			-- If a list is provided the first command available on the system is used.
			converter = { "utftex", "latex2text" },
			-- Highlight for latex blocks.
			highlight = "RenderMarkdownMath",
			-- Determines where latex formula is rendered relative to block.
			-- | above  | above latex block                               |
			-- | below  | below latex block                               |
			-- | center | centered with latex block (must be single line) |
			position = "center",
			-- Number of empty lines above latex blocks.
			top_pad = 0,
			-- Number of empty lines below latex blocks.
			bottom_pad = 0,
		},
	},
}
