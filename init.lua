-- my neovim configuration :D 


-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.g.start_time = vim.fn.reltime()
vim.loader.enable() -- SPEEEEEEED
vim.call('plug#begin')

-- pugin list
Plug('nyoom-engineering/oxocarbon.nvim') -- colorscheme
Plug('nvim-tree/nvim-web-devicons') -- required for file explorer
Plug('nvim-tree/nvim-tree.lua') -- file explorer
Plug('nvim-lua/plenary.nvim') -- required for telescope
Plug('nvim-telescope/telescope.nvim') -- telescope
Plug('nvim-treesitter/nvim-treesitter') -- treesitter
Plug('mbbill/undotree') -- undo tree
Plug('tpope/vim-fugitive') -- git integration
Plug('~whynothugo/lsp_lines.nvim') -- diagnostics

vim.call('plug#end')


-- config and plugin config are in alternative files
require("config.theme")
require("config.mappings")
require("config.options")

require("plugins.telescope")
require("plugins.colorscheme")
require("plugins.treesitter")
require("plugins.undotree")
require("plugins.fugitive")
require("plugins.nvim-tree")

