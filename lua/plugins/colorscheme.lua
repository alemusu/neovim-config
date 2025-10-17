
function Colors(color)
	color = color
	vim.cmd.colorscheme(color)

	-- set transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end	

Colors()
