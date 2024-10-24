function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = "none" })
end

return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					sidebars = "dark",
					floats = "dark",
				},
			})
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
			})
			vim.cmd("colorscheme rose-pine")
			ColorMyPencils()
		end
	},
	{
		"folke/fakedonalds.nvim",
		name = "fakedonalds",
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function ()
			require("gruvbox").setup()
			vim.cmd.colorscheme("gruvbox")
		end,
		opts = {
		}
	}
}
