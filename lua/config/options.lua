
-- see line number relatively
vim.wo.relativenumber = true

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({higroup = "IncSearch", timeout = 200})
  end,
})

-- makes a 4 space indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- nvim makes no backups and undotree can acces long time edits
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- when searched, text doesn't remain highlighted
vim.opt.hlsearch = false

-- can use * queries when searching 
vim.opt.incsearch = true

-- good colors
vim.opt.termguicolors = true

-- will always have 8 lines above/below the cursor
vim.opt.scrolloff = 8

-- fast update time
vim.opt.updatetime = 50

-- creates a column at 80 chars (try not to excceed it)
vim.opt.colorcolumn = "80"
