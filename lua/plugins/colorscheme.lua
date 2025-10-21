-- transparent background for the line numbers
-- vim.cmd [[
--   hi LineNr guibg=NONE ctermbg=NONE
--   hi CursorLineNr guibg=NONE ctermbg=NONE
--   hi SignColumn guibg=NONE ctermbg=NONE
-- ]]


vim.opt.background = "dark" -- dark or light
vim.cmd("colorscheme oxocarbon")

-- transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

